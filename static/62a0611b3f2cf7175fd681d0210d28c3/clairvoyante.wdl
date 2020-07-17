version 1.0

task Clairvoyante.py {
  input {
    String submodule_name
    String? of
    String? the
    String? submodule
  }
  command <<<
    clairvoyante.py \
      ~{submodule_name} \
      ~{of} \
      ~{the} \
      ~{submodule}
  >>>
  parameter_meta {
    submodule_name: ""
    of: ""
    the: ""
    submodule: ""
  }
}