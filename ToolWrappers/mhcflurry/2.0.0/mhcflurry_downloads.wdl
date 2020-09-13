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
  parameter_meta {
    quiet: "Output less"
    verbose: "Output more"
  }
  output {
    File out_stdout = stdout()
  }
}