version 1.0

task MmseqsDiffseqdbs {
  input {
    Boolean? use_seq_id
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs diffseqdbs \
      ~{if (use_seq_id) then "--use-seq-id" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    use_seq_id: "false           Sequence ID (Uniprot, GenBank, ...) is used for identifying matches between the old and the new DB."
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}