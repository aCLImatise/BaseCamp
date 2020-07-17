version 1.0

task OmeroDelete {
  input {
    String? wait
    String? include
    String? exclude
    Boolean? ordered
    Boolean? list
    Boolean? report
    Boolean? dry_run
    Boolean? force
    String obj
  }
  command <<<
    omero delete \
      ~{obj} \
      ~{if defined(wait) then ("--wait " +  '"' + wait + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{true="--ordered" false="" ordered} \
      ~{true="--list" false="" list} \
      ~{true="--report" false="" report} \
      ~{true="--dry-run" false="" dry_run} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    wait: "Number of seconds to wait for the processing to complete (Indefinite < 0; No wait=0)."
    include: "Modifies the given option by including a list of classes"
    exclude: "Modifies the given option by excluding a list of classes"
    ordered: "Pass multiple objects to commands strictly in the order given, otherwise group into as few commands as possible."
    list: "Print a list of all available graph specs"
    report: "Print more detailed report of each action"
    dry_run: "Do a dry run of the command, providing a report of what would have been done"
    force: "Force an action that otherwise defaults to a dry run"
    obj: "Objects to be processed in the form <Class>:<Id>"
  }
}