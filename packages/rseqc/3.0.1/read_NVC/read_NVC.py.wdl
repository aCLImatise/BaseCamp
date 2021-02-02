version 1.0

task ReadNVCpy {
  input {
    File? input_file
    String? out_prefix
    Boolean? nx
    Int? mapq
  }
  command <<<
    read_NVC_py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if (nx) then "--nx" else ""} \
      ~{if defined(mapq) then ("--mapq " +  '"' + mapq + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Input file in BAM or SAM format.[required]"
    out_prefix: "Prefix of output files(s). [required]"
    nx: "Flag option. Presense of this flag tells program to\\ninclude N,X in output NVC plot [required]"
    mapq: "Minimum mapping quality (phred scaled) for an\\nalignment to be called \\\"uniquely mapped\\\". default=30\\n"
  }
  output {
    File out_stdout = stdout()
  }
}