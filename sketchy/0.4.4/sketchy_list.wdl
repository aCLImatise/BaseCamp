version 1.0

task SketchyList {
  input {
    File? path
  }
  command <<<
    sketchy list \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""}
  >>>
  parameter_meta {
    path: "Path to sketchy home directory [~/.sketchy]"
  }
}