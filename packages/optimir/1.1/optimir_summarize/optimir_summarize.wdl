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
    docker: "quay.io/biocontainers/optimir:1.1--pyh3252c3a_0"
  }
  parameter_meta {
    dir: "Full path of the directory containing results"
  }
  output {
    File out_stdout = stdout()
  }
}