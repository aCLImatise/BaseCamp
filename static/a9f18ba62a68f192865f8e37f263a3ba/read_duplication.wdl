version 1.0

task ReadDuplication.py {
  input {
    String? input_file
    String? out_prefix
    String? up_limit
    String? mapq
  }
  command <<<
    read_duplication.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(up_limit) then ("--up-limit " +  '"' + up_limit + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    out_prefix: "Prefix of output files(s)."
    up_limit: "Upper limit of reads' occurrence. Only used for plotting, default=500 (times)"
    mapq: "Minimum mapping quality (phred scaled) for an alignment to be considered as \"uniquely mapped\". default=30"
  }
}