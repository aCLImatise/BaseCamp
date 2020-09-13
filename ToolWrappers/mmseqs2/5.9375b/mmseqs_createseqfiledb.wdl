version 1.0

task MmseqsCreateseqfiledb {
  input {
    Boolean? min_sequences
    Boolean? max_sequences
    Boolean? hh_format
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs createseqfiledb \
      ~{if (min_sequences) then "--min-sequences" else ""} \
      ~{if (max_sequences) then "--max-sequences" else ""} \
      ~{if (hh_format) then "--hh-format" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    min_sequences: "1               minimum number of sequences a cluster may contain"
    max_sequences: "2147483647      maximum number of sequences a cluster may contain"
    hh_format: "false           format entries to use with hhsuite (for singleton clusters)"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}