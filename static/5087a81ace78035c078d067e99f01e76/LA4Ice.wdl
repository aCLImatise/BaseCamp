version 1.0

task LA4Ice {
  input {
    Boolean? car_me_uf
  }
  command <<<
    LA4Ice \
      ~{true="-carmEUF" false="" car_me_uf}
  >>>
  parameter_meta {
    car_me_uf: ""
  }
}