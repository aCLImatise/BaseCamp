version 1.0

task Sra2illumina.py {
  input {
    String inputInput1
    String inputInput2
    String outputOutput1
    String outputOutput2
    String tagTagReadName
    Boolean phred64Phred64
    Boolean phred33Phred33
    Boolean no12No12
    String tmpTmpDir
    String linkLink
  }
  command <<<
    sra2illumina.py \
      ~{if defined(inputInput1) then ("--input_1 " +  '"' + inputInput1 + '"') else ""} \
      ~{if defined(inputInput2) then ("--input_2 " +  '"' + inputInput2 + '"') else ""} \
      ~{if defined(outputOutput1) then ("--output_1 " +  '"' + outputOutput1 + '"') else ""} \
      ~{if defined(outputOutput2) then ("--output_2 " +  '"' + outputOutput2 + '"') else ""} \
      ~{if defined(tagTagReadName) then ("--tag_read_name " +  '"' + tagTagReadName + '"') else ""} \
      ~{true="--phred64" false="" phred64Phred64} \
      ~{true="--phred33" false="" phred33Phred33} \
      ~{true="--no12" false="" no12No12} \
      ~{if defined(tmpTmpDir) then ("--tmp_dir " +  '"' + tmpTmpDir + '"') else ""} \
      ~{if defined(linkLink) then ("--link " +  '"' + linkLink + '"') else ""}
  >>>
}