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
      ~{true="--same_run" false="" same_run} \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""}
  >>>
  parameter_meta {
    out: "Merged OSW output file.  [required]"
    same_run: "/ --no-same_run  Assume input files are from same run (deletes run information)."
    template: "Template OSW file.  [required]"
    in_files: ""
  }
}