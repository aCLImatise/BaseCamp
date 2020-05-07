version 1.0

task Phred.py {
  input {
    String inputInput
    String inputInputType
    String outputOutput
    String outputOutputType
    String tmpTmpDir
    String linkLink
  }
  command <<<
    phred.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(inputInputType) then ("--input_type " +  '"' + inputInputType + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputType) then ("--output_type " +  '"' + outputOutputType + '"') else ""} \
      ~{if defined(tmpTmpDir) then ("--tmp_dir " +  '"' + tmpTmpDir + '"') else ""} \
      ~{if defined(linkLink) then ("--link " +  '"' + linkLink + '"') else ""}
  >>>
}