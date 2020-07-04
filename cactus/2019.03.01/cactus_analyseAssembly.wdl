version 1.0

task CactusAnalyseAssembly {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    cactus_analyseAssembly \
      ~{no} \
      ~{such} \
      ~{file} \
      ~{or} \
      ~{directory}
  >>>
  parameter_meta {
    no: ""
    such: ""
    file: ""
    or: ""
    directory: ""
  }
}