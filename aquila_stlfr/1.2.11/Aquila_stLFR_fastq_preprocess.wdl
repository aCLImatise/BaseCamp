version 1.0

task AquilaStLFRFastqPreprocess {
  input {
    String fastFastQ1
    String fastFastQ2
    String outOutFile
  }
  command <<<
    Aquila_stLFR_fastq_preprocess \
      ~{if defined(fastFastQ1) then ("--fastq_1 " +  '"' + fastFastQ1 + '"') else ""} \
      ~{if defined(fastFastQ2) then ("--fastq_2 " +  '"' + fastFastQ2 + '"') else ""} \
      ~{if defined(outOutFile) then ("--out_file " +  '"' + outOutFile + '"') else ""}
  >>>
}