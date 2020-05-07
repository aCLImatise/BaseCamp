version 1.0

task Clairvoyante.py {
  input {
    String? submoduleSubmoduleName
    String? optionsOptions
    String? ofOf
    String? theThe
    String? submoduleSubmodule
  }
  command <<<
    clairvoyante.py \
      ~{submoduleSubmoduleName} \
      ~{optionsOptions} \
      ~{ofOf} \
      ~{theThe} \
      ~{submoduleSubmodule}
  >>>
}