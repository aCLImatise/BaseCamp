version 1.0

task HubwardLiftover {
  input {
    String? from_assembly
    String? to_assembly
    String dirname
    String newdir
  }
  command <<<
    hubward liftover \
      ~{dirname} \
      ~{newdir} \
      ~{if defined(from_assembly) then ("--from_assembly " +  '"' + from_assembly + '"') else ""} \
      ~{if defined(to_assembly) then ("--to_assembly " +  '"' + to_assembly + '"') else ""}
  >>>
  parameter_meta {
    from_assembly: "Source assembly (default: -)"
    to_assembly: "Destination assembly (default: -)\\n"
    dirname: "Single study to liftover"
    newdir: "Destination directory"
  }
  output {
    File out_stdout = stdout()
  }
}