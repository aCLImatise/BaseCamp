version 1.0

task Alc {
  input {
    Boolean? o
    File file_one
    File? file_two
  }
  command <<<
    alc \
      ~{file_one} \
      ~{file_two} \
      ~{true="-o" false="" o}
  >>>
  parameter_meta {
    o: ""
    file_one: ""
    file_two: ""
  }
}