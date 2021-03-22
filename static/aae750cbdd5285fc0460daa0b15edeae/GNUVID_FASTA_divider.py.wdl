version 1.0

task GNUVIDFASTADividerpy {
  input {
    String? n
    Int? l
  }
  command <<<
    GNUVID_FASTA_divider_py \
      ~{if defined(n) then ("-N " +  '"' + n + '"') else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gnuvid:2.2--0"
  }
  parameter_meta {
    n: ""
    l: ""
  }
  output {
    File out_stdout = stdout()
  }
}