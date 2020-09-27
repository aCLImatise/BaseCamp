version 1.0

task MakeFastaFileFromScaffoldspl {
  input {
    String? t_exists_fatal
  }
  command <<<
    makeFastaFileFromScaffolds_pl \
      ~{if defined(t_exists_fatal) then ("-h " +  '"' + t_exists_fatal + '"') else ""}
  >>>
  parameter_meta {
    t_exists_fatal: "'t exists -- fatal."
  }
  output {
    File out_stdout = stdout()
  }
}