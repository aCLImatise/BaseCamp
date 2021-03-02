version 1.0

task LynerTargets {
  input {
    File? from_file
  }
  command <<<
    lyner targets \
      ~{if defined(from_file) then ("--from-file " +  '"' + from_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    from_file: "[exclude|intersect]"
  }
  output {
    File out_stdout = stdout()
  }
}