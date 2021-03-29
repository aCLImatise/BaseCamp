version 1.0

task Iutrimfastq {
  input {
    Int? trim_from
    Int? trim_to
    String file_path
  }
  command <<<
    iu_trim_fastq \
      ~{file_path} \
      ~{if defined(trim_from) then ("--trim-from " +  '"' + trim_from + '"') else ""} \
      ~{if defined(trim_to) then ("--trim-to " +  '"' + trim_to + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-utils:2.11--py_0"
  }
  parameter_meta {
    trim_from: "Trim from"
    trim_to: "Trim to\\n"
    file_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}