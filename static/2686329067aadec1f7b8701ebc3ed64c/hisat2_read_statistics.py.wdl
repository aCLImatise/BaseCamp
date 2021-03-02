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
    docker: "None"
  }
  parameter_meta {
    reads_count_default: "reads count (default: 10000)"
    read_file: "reads file"
  }
  output {
    File out_stdout = stdout()
  }
}