version 1.0

task SeqanTcoffee {
  input {
    Boolean versionVersionCheck
    String seqSeq
    String alphabetAlphabet
    String outfileOutfile
    String pairwisePairwiseAlignment
    Int bandBandWidth
    Int gopGop
    Int gexGex
    String matrixMatrix
    Int mscMsc
    Int mmscMmsc
    String useUseTree
    String buildBuild
    String inInFile
  }
  command <<<
    seqan_tcoffee \
      ~{if defined(versionVersionCheck) then ("--version-check " +  '"' + versionVersionCheck + '"') else ""} \
      ~{if defined(seqSeq) then ("--seq " +  '"' + seqSeq + '"') else ""} \
      ~{if defined(alphabetAlphabet) then ("--alphabet " +  '"' + alphabetAlphabet + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(pairwisePairwiseAlignment) then ("--pairwise-alignment " +  '"' + pairwisePairwiseAlignment + '"') else ""} \
      ~{if defined(bandBandWidth) then ("--band-width " +  '"' + bandBandWidth + '"') else ""} \
      ~{if defined(gopGop) then ("--gop " +  '"' + gopGop + '"') else ""} \
      ~{if defined(gexGex) then ("--gex " +  '"' + gexGex + '"') else ""} \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(mscMsc) then ("--msc " +  '"' + mscMsc + '"') else ""} \
      ~{if defined(mmscMmsc) then ("--mmsc " +  '"' + mmscMmsc + '"') else ""} \
      ~{if defined(useUseTree) then ("--usetree " +  '"' + useUseTree + '"') else ""} \
      ~{if defined(buildBuild) then ("--build " +  '"' + buildBuild + '"') else ""} \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""}
  >>>
}