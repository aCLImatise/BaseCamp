version 1.0

task Nullarborjsonpl {
  input {
    Boolean? in_dir
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    nullarbor_json_pl \
      ~{if (in_dir) then "--indir" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    in_dir: "Nullarbor result folder"
    quiet: "No output"
    verbose: "More output"
  }
  output {
    File out_stdout = stdout()
  }
}