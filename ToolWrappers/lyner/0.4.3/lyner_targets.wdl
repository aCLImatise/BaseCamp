version 1.0

task LynerTargets {
  input {
    String? targets
    File? from_file
    Boolean? mode
  }
  command <<<
    lyner targets \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(from_file) then ("--from-file " +  '"' + from_file + '"') else ""} \
      ~{if (mode) then "--mode" else ""}
  >>>
  parameter_meta {
    targets: ""
    from_file: ""
    mode: "[exclude|intersect]"
  }
  output {
    File out_stdout = stdout()
  }
}