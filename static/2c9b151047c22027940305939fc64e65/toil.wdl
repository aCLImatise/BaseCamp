version 1.0

task Toil {
  input {
    String? toToIl
  }
  command <<<
    toil \
      ~{toToIl}
  >>>
}