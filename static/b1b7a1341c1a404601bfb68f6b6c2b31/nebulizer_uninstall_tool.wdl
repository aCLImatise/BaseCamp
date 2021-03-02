version 1.0

task NebulizerUninstallTool {
  input {
    Boolean? remove_from_disk
    Boolean? yes
    String fast_qc
  }
  command <<<
    nebulizer uninstall_tool \
      ~{fast_qc} \
      ~{if (remove_from_disk) then "--remove_from_disk" else ""} \
      ~{if (yes) then "--yes" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    remove_from_disk: "remove the uninstalled tool from disk (otherwise tool is\\njust deactivated)."
    yes: "don't ask for confirmation of uninstallation."
    fast_qc: "The tool must already be present in GALAXY; a revision must be specified"
  }
  output {
    File out_stdout = stdout()
  }
}