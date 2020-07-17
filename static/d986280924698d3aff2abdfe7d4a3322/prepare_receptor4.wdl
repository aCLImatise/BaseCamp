version 1.0

task PrepareReceptor4.py {
  input {
    Boolean? receptorfilename
  }
  command <<<
    prepare_receptor4.py \
      ~{true="-r" false="" receptorfilename}
  >>>
  parameter_meta {
    receptorfilename: "receptor_filename "
  }
}