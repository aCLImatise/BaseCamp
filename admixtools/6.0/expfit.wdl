version 1.0

task Expfit.sh {
  input {
    String? parParFile
  }
  command <<<
    expfit.sh \
      ~{parParFile}
  >>>
}