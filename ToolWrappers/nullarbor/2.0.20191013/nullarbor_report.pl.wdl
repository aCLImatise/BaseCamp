version 1.0

task Nullarborreportpl {
  input {
    Boolean? name
    Boolean? in_dir
    Boolean? outdir
    Boolean? preview
    Boolean? quiet
    Boolean? verbose
  }
  command <<<
    nullarbor_report_pl \
      ~{if (name) then "--name" else ""} \
      ~{if (in_dir) then "--indir" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (preview) then "--preview" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    name: "Report name to put in the top heading"
    in_dir: "Nullarbor result folder"
    outdir: "Folder to build report HTML in"
    preview: "Quick summary after 'make preview'"
    quiet: "No output"
    verbose: "More output"
  }
  output {
    File out_stdout = stdout()
  }
}