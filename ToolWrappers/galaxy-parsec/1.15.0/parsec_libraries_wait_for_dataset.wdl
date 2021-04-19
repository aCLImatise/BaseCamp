version 1.0

task ParsecLibrariesWaitForDataset {
  input {
    Float? max_wait
    Float? interval
    String library
  }
  command <<<
    parsec libraries wait_for_dataset \
      ~{library} \
      ~{if defined(max_wait) then ("--maxwait " +  '"' + max_wait + '"') else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    max_wait: "Total time (in seconds) to wait for the dataset state to\\nbecome terminal. If the dataset state is not terminal\\nwithin this time, a ``DatasetTimeoutException`` will be\\nthrown.  [default: 12000]"
    interval: "Time (in seconds) to wait between 2 consecutive checks.\\n[default: 3]"
    library: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}