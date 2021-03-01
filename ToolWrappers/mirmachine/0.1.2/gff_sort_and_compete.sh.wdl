version 1.0

task GffSortAndCompetesh {
  input {
    String cat
    File? var_file
  }
  command <<<
    gff_sort_and_compete_sh \
      ~{cat} \
      ~{var_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirmachine:0.1.2--py_0"
  }
  parameter_meta {
    cat: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}