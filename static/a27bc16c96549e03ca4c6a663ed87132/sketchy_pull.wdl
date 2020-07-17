version 1.0

task SketchyPull {
  input {
    File? path
    Boolean? full
  }
  command <<<
    sketchy pull \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{true="--full" false="" full}
  >>>
  parameter_meta {
    path: "Path to sketchy home directory [~/.sketchy ]"
    full: "Pull the full default sketch collections [false]"
  }
}