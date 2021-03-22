version 1.0

task HiLineAligner {
  input {
    Int? threads
  }
  command <<<
    _HiLine_Aligner \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hiline:0.2.2--py38hc9558a2_1"
  }
  parameter_meta {
    threads: "RANGE"
  }
  output {
    File out_stdout = stdout()
  }
}