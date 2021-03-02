version 1.0

task RunWorkflowspy {
  input {
    String? threads
  }
  command <<<
    run_workflows_py \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/somaticseq:3.6.2--py_0"
  }
  parameter_meta {
    threads: "[PARTITION_NUMBERING [PARTITION_NUMBERING ...]], --partition-numbering [PARTITION_NUMBERING [PARTITION_NUMBERING ...]]"
  }
  output {
    File out_stdout = stdout()
  }
}