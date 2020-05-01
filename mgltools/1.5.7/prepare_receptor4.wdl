version 1.0

task PrepareReceptor4.py {
  input {
    Boolean rR
  }
  command <<<
    prepare_receptor4.py \
      ~{true="-r" false="" rR}
  >>>
}