version 1.0

task MmseqsSplitdb {
  input {
    Boolean? split
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs splitdb \
      ~{if (split) then "--split" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    split: "0               Splits input sets into N equally distributed chunks. The default value sets the best split automatically. createindex can only be used with split 1."
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
  }
}