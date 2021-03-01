version 1.0

task PyprophetMerge {
  input {
    File? out
    Boolean? no_same_run
    File? template
    String? in_files
  }
  command <<<
    pyprophet merge \
      ~{in_files} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (no_same_run) then "--no-same_run" else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "Merged OSW output file.  [required]"
    no_same_run: "Assume input files are from same run (deletes\\nrun information)."
    template: "Template OSW file.  [required]"
    in_files: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}