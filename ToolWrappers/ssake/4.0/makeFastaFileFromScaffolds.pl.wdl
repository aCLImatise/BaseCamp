version 1.0

task MakeFastaFileFromScaffoldspl {
  input {
    String? t_exists_
  }
  command <<<
    makeFastaFileFromScaffolds_pl \
      ~{if defined(t_exists_) then ("-h " +  '"' + t_exists_ + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    t_exists_: "'t exists -- fatal."
  }
  output {
    File out_stdout = stdout()
  }
}