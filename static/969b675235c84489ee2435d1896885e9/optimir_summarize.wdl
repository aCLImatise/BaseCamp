version 1.0

task OptimirSummarize {
  input {
    String? dir
  }
  command <<<
    optimir summarize \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""}
  >>>
  parameter_meta {
    dir: "Full path of the directory containing results"
  }
}