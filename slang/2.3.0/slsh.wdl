version 1.0

task Slsh {
  input {
    File? fileFile
    String? notNot
    String? foundFound
  }
  command <<<
    slsh \
      ~{fileFile} \
      ~{notNot} \
      ~{foundFound}
  >>>
}