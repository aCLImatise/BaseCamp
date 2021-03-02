version 1.0

task LraLocalFilefa {
  input {
    Boolean? int_local_minimizer
    Boolean? int_local_maximum
    Boolean? int_local_word
    String? help
  }
  command <<<
    lra local file_fa \
      ~{if (int_local_minimizer) then "-w" else ""} \
      ~{if (int_local_maximum) then "-f" else ""} \
      ~{if (int_local_word) then "-k" else ""} \
      ~{if defined(help) then ("-h " +  '"' + help + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/lra:1.1.2--h5ef6573_0"
  }
  parameter_meta {
    int_local_minimizer: "(int) Local minimizer window size (10)."
    int_local_maximum: "(int) Local maximum minimizer frequency (5)."
    int_local_word: "(int) Local word size (10)"
    help: "help."
  }
  output {
    File out_stdout = stdout()
  }
}