version 1.0

task ReadNVC.py {
  input {
    String? input_file
    String? out_prefix
    Boolean? nx
    String? mapq
  }
  command <<<
    read_NVC.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{true="--nx" false="" nx} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Input file in BAM or SAM format.[required]"
    out_prefix: "Prefix of output files(s). [required]"
    nx: "Flag option. Presense of this flag tells program to include N,X in output NVC plot [required]"
    mapq: "Minimum mapping quality (phred scaled) for an alignment to be called \"uniquely mapped\". default=30"
  }
}