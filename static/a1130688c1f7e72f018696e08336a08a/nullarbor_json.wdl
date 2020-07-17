version 1.0

task NullarborJson.pl {
  input {
    Boolean? in_dir
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    nullarbor-json.pl \
      ~{true="--indir" false="" in_dir} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    in_dir: "Nullarbor result folder"
    quiet: "No output"
    verbose: "More output"
  }
}