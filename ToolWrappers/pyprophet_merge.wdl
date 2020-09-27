version 1.0

task PyprophetMerge {
  input {
    File? out
    Boolean? same_run
    File? template
    String? in_files
  }
  command <<<
    pyprophet merge \
      ~{in_files} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (same_run) then "--same_run" else ""} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""}
  >>>
  parameter_meta {
    out: "Merged OSW output file.  [required]"
    same_run: "/ --no-same_run  Assume input files are from same run (deletes\\nrun information)."
    template: "Template OSW file.  [required]"
    in_files: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}