version 1.0

task ReadGC.py {
  input {
    String? input_file
    String? out_prefix
    String? mapq
  }
  command <<<
    read_GC.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    out_prefix: "Prefix of output files(s)."
    mapq: "Minimum mapping quality (phred scaled) for an alignment to be called \"uniquely mapped\". default=30"
  }
}