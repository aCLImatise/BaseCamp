version 1.0

task Mhcflurrydownloads {
  input {
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    mhcflurry_downloads \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mhcflurry:2.0.1--pyh864c0ab_0"
  }
  parameter_meta {
    quiet: "Output less"
    verbose: "Output more"
  }
  output {
    File out_stdout = stdout()
  }
}