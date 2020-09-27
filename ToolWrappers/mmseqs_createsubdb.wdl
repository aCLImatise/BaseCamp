version 1.0

task MmseqsCreatesubdb {
  input {
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs createsubdb \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}