version 1.0

task NullarborReport.pl {
  input {
    Boolean? name
    Boolean? in_dir
    Boolean? outdir
    Boolean? preview
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    nullarbor-report.pl \
      ~{true="--name" false="" name} \
      ~{true="--indir" false="" in_dir} \
      ~{true="--outdir" false="" outdir} \
      ~{true="--preview" false="" preview} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    name: "Report name to put in the top heading"
    in_dir: "Nullarbor result folder"
    outdir: "Folder to build report HTML in"
    preview: "Quick summary after 'make preview'"
    quiet: "No output"
    verbose: "More output"
  }
}