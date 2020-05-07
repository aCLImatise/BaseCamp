version 1.0

task RoProfile.py {
  input {
    String roarRoarY
    String gffGffDir
    Boolean coreCore
    Boolean transposeTranspose
    Boolean thTh
    Boolean geneGeneFile
  }
  command <<<
    roProfile.py \
      ~{if defined(roarRoarY) then ("--roary " +  '"' + roarRoarY + '"') else ""} \
      ~{if defined(gffGffDir) then ("--gffdir " +  '"' + gffGffDir + '"') else ""} \
      ~{true="--core" false="" coreCore} \
      ~{true="--transpose" false="" transposeTranspose} \
      ~{true="-th" false="" thTh} \
      ~{true="--genefile" false="" geneGeneFile}
  >>>
}