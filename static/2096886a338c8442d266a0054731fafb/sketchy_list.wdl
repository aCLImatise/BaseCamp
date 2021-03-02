version 1.0

task SketchyList {
  input {
    File? path
  }
  command <<<
    sketchy list \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path: "Path to sketchy home directory [~/.sketchy]"
  }
  output {
    File out_stdout = stdout()
  }
}