version 1.0

task LA4Ice {
  input {
    Boolean? car_me_uf
  }
  command <<<
    LA4Ice \
      ~{if (car_me_uf) then "-carmEUF" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    car_me_uf: ""
  }
  output {
    File out_stdout = stdout()
  }
}