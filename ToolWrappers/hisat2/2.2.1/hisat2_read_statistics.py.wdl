version 1.0

task Hisat2ReadStatisticspy {
  input {
    Int? reads_count_default
    String read_file
  }
  command <<<
    hisat2_read_statistics_py \
      ~{read_file} \
      ~{if defined(reads_count_default) then ("-n " +  '"' + reads_count_default + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hisat2:2.2.1--he1b5a44_1"
  }
  parameter_meta {
    reads_count_default: "reads count (default: 10000)"
    read_file: "reads file"
  }
  output {
    File out_stdout = stdout()
  }
}