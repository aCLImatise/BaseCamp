version 1.0

task PanphlanMap.py {
  input {
    String inputInput
    String iIBowtie2Indexes
    String fastFastX
    String cladeClade
    String outputOutput
    String outOutBam
    String nprocNproc
    String mgbMgb
    String readReadLength
    String bt2Bt2
    String thThMismatches
    String tmpTmp
    Boolean verboseVerbose
  }
  command <<<
    panphlan_map.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(iIBowtie2Indexes) then ("--i_bowtie2_indexes " +  '"' + iIBowtie2Indexes + '"') else ""} \
      ~{if defined(fastFastX) then ("--fastx " +  '"' + fastFastX + '"') else ""} \
      ~{if defined(cladeClade) then ("--clade " +  '"' + cladeClade + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outOutBam) then ("--out_bam " +  '"' + outOutBam + '"') else ""} \
      ~{if defined(nprocNproc) then ("--nproc " +  '"' + nprocNproc + '"') else ""} \
      ~{if defined(mgbMgb) then ("--mGB " +  '"' + mgbMgb + '"') else ""} \
      ~{if defined(readReadLength) then ("--readLength " +  '"' + readReadLength + '"') else ""} \
      ~{if defined(bt2Bt2) then ("--bt2 " +  '"' + bt2Bt2 + '"') else ""} \
      ~{if defined(thThMismatches) then ("--th_mismatches " +  '"' + thThMismatches + '"') else ""} \
      ~{if defined(tmpTmp) then ("--tmp " +  '"' + tmpTmp + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}