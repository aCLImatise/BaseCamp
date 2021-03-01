version 1.0

task PrepareReceptor4py {
  input {
    Boolean? receptorfilename
  }
  command <<<
    prepare_receptor4_py \
      ~{if (receptorfilename) then "-r" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    receptorfilename: "receptor_filename"
  }
  output {
    File out_stdout = stdout()
  }
}