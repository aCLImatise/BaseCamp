version 1.0

task AribaPubmlstget {
  input {
    Boolean? verbose
    String species
    String outdir
  }
  command <<<
    ariba pubmlstget \
      ~{species} \
      ~{outdir} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "Be verbose"
    species: "Species to download. Put it in quotes"
    outdir: "Name of output directory to be made (must not already exist)"
  }
  output {
    File out_stdout = stdout()
  }
}