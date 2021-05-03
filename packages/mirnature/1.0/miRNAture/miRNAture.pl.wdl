version 1.0

task MiRNAturepl {
  input {
    String? man
  }
  command <<<
    miRNAture_pl \
      ~{if defined(man) then ("-man " +  '"' + man + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirnature:1.0--pl5262r35hdfd78af_2"
  }
  parameter_meta {
    man: "documentation"
  }
  output {
    File out_stdout = stdout()
  }
}