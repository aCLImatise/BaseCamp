version 1.0

task ReadQualitypy {
  input {
    File? input_file
    String? out_prefix
    Int? reduce
    Int? mapq
  }
  command <<<
    read_quality_py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(reduce) then ("--reduce " +  '"' + reduce + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format. [required]"
    out_prefix: "Prefix of output files(s). [required]"
    reduce: "To avoid making huge vector in R, nucleotide with\\nparticular phred score less frequent than this number\\nwill be ignored. Increase this number save more memory\\nwhile reduce precision. Set to 1 achieves maximum\\nprecision (i.e. every nucleotide will be considered).\\nThis option only applies to the 'boxplot'. default=1"
    mapq: "Minimum mapping quality (phred scaled) for an\\nalignment to be called \\\"uniquely mapped\\\". default=30\\n"
  }
  output {
    File out_stdout = stdout()
  }
}