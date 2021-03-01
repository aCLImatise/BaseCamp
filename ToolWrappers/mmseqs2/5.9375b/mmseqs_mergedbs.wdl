version 1.0

task MmseqsMergedbs {
  input {
    Boolean? prefixes
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs mergedbs \
      ~{if (prefixes) then "--prefixes" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefixes: "Comma separated list of prefixes for each entry"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}