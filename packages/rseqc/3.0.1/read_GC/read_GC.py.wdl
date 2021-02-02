version 1.0

task ReadGCpy {
  input {
    File? input_file
    String? out_prefix
    Int? mapq
  }
  command <<<
    read_GC_py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    out_prefix: "Prefix of output files(s)."
    mapq: "Minimum mapping quality (phred scaled) for an\\nalignment to be called \\\"uniquely mapped\\\". default=30\\n"
  }
  output {
    File out_stdout = stdout()
  }
}