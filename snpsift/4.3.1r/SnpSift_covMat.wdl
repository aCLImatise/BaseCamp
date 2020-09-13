version 1.0

task SnpSiftCovMat {
  input {
    String? jar
    String java
    String cov_mat
    String allele_dot_matrix_dot_txt
  }
  command <<<
    SnpSift covMat \
      ~{java} \
      ~{cov_mat} \
      ~{allele_dot_matrix_dot_txt} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    jar: ""
    java: ""
    cov_mat: ""
    allele_dot_matrix_dot_txt: ""
  }
  output {
    File out_stdout = stdout()
  }
}