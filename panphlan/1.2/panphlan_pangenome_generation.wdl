version 1.0

task PanphlanPangenomeGeneration.py {
  input {
    String iIFfn
    String iIFna
    String iIGff
    String cladeClade
    String outputOutput
    String roarRoarYDir
    String thTh
    String tmpTmp
    Boolean ucUc
    Boolean verboseVerbose
  }
  command <<<
    panphlan_pangenome_generation.py \
      ~{if defined(iIFfn) then ("--i_ffn " +  '"' + iIFfn + '"') else ""} \
      ~{if defined(iIFna) then ("--i_fna " +  '"' + iIFna + '"') else ""} \
      ~{if defined(iIGff) then ("--i_gff " +  '"' + iIGff + '"') else ""} \
      ~{if defined(cladeClade) then ("--clade " +  '"' + cladeClade + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(roarRoarYDir) then ("--roary_dir " +  '"' + roarRoarYDir + '"') else ""} \
      ~{if defined(thTh) then ("--th " +  '"' + thTh + '"') else ""} \
      ~{if defined(tmpTmp) then ("--tmp " +  '"' + tmpTmp + '"') else ""} \
      ~{true="--uc" false="" ucUc} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}