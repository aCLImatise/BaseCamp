version 1.0

task ReadDuplicationpy {
  input {
    File? input_file
    String? out_prefix
    Int? up_limit
    Int? mapq
  }
  command <<<
    read_duplication_py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(up_limit) then ("--up-limit " +  '"' + up_limit + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    out_prefix: "Prefix of output files(s)."
    up_limit: "Upper limit of reads' occurrence. Only used for\\nplotting, default=500 (times)"
    mapq: "Minimum mapping quality (phred scaled) for an\\nalignment to be considered as \\\"uniquely mapped\\\".\\ndefault=30\\n"
  }
  output {
    File out_stdout = stdout()
  }
}