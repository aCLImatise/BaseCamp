version 1.0

task SketchyPull {
  input {
    File pathPath
    Boolean fullFull
  }
  command <<<
    sketchy pull \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""} \
      ~{true="--full" false="" fullFull}
  >>>
}