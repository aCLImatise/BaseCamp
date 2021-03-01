version 1.0

task OptimirSummarize {
  input {
    File? dir
  }
  command <<<
    optimir summarize \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dir: "Full path of the directory containing results"
  }
  output {
    File out_stdout = stdout()
  }
}