version 1.0

task MmseqsSummarizeheaders {
  input {
    Boolean? header_type
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs summarizeheaders \
      ~{if (header_type) then "--header-type" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    header_type: "1               Header Type: 1 Uniclust, 2 Metaclust"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}