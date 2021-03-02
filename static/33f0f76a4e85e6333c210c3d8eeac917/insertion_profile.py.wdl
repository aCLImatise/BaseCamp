version 1.0

task InsertionProfilepy {
  input {
    File? input_file
    String? out_prefix
    Int? mapq
    String? sequencing
  }
  command <<<
    insertion_profile_py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""} \
      ~{if defined(sequencing) then ("--sequencing " +  '"' + sequencing + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    out_prefix: "Prefix of output files(s)."
    mapq: "Minimum mapping quality (phred scaled) for an\\nalignment to be considered as \\\"uniquely mapped\\\".\\ndefault=30"
    sequencing: "Sequencing layout. \\\"SE\\\"(single-end) or \\\"PE\\\"(pair-end).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}