version 1.0

task NibSize {
  input {
    String nib_one
  }
  command <<<
    nibSize \
      ~{nib_one}
  >>>
  parameter_meta {
    nib_one: ""
  }
}