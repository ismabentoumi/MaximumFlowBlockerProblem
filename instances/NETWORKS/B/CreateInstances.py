#Program that transforms instances of network repository to an adapted format for our code


import os
import random
import glob
import re

idg=0
idn =0
for fichier in glob.glob("/home/i80055081/interdiction-mcf/InstancesExamples_MaxFlowBlocker/DATAARTICLE/B/*.dat"):
  print(os.path.basename(fichier))
  if(os.path.basename(fichier)[0] == "n"):
    idg = idg +1
    NewNameFile = os.path.basename(fichier).replace("net","_")
    NewNameFile = os.path.basename(fichier).replace("by","_")
    NbLines = NewNameFile.split("_")[0]
    NbCols = NewNameFile.split("_")[1]
    NameFolder = "GRID/" + NbLines + "_" + NbCols + "_" + str(idg)
  else:
    idn = idn + 1
    NameFolder = os.path.basename(fichier).split(".")[0]
  os.mkdir(NameFolder)
  fileLink_Output = open(NameFolder+"/link.csv", "a")
  fileNode_Output = open(NameFolder+"/node.csv", "a")
  fileService_Output = open(NameFolder+"/service.txt", "a")
  fileLink_Output.write("LinkId,srcNodeId,srcIntfId,dstNodeId,dstIntfId,bandwidth,linkCost")
  fileLink_Output.write("\n")
  fileNode_Output.write("NodeID")
  fileNode_Output.write("\n")
  file = open(fichier,"r")
  i = 0
  NbNODES=0
  Source = 0
  Dest = 0
  for line in file:
    lineSplit = line.split()
    if (i==0):
      NbNODES=int(lineSplit[2])
    if(i==1):
      Source=int(lineSplit[1])
    if(i==2):
      Dest=int(lineSplit[1])
    if(i>=3):
      print(lineSplit)
      fileLink_Output.write(str(i-3)+","+str(int(lineSplit[1])-1)+","+"0"+","+str(int(lineSplit[2])-1)+","+"0"+","+lineSplit[3]+","+lineSplit[4]+"\n")
    i = i+1
  for j in range(NbNODES+1):
    fileNode_Output.write(str(j))
    fileNode_Output.write("\n")
  fileService_Output.write(str(Source-1)+";"+str(Dest-1))
  fileLink_Output.close()
  fileNode_Output.close()
  fileService_Output.close()

