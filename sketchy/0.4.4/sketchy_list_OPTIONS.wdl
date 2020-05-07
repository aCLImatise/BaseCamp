version 1.0

task SketchyListOPTIONS {
  input {
    File pathPath
  }
  command <<<
    sketchy list OPTIONS \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""}
  >>>
}