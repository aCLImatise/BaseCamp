version 1.0

task SketchyPull {
  input {
    File? path
    Boolean? full
  }
  command <<<
    sketchy pull \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if (full) then "--full" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sketchy:0.4.5--py37h9a982cc_0"
  }
  parameter_meta {
    path: "Path to sketchy home directory [~/.sketchy ]"
    full: "Pull the full default sketch collections [false]"
  }
  output {
    File out_stdout = stdout()
  }
}