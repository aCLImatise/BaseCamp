version 1.0

task Dexqv {
  input {
    Boolean? v_kl
  }
  command <<<
    dexqv \
      ~{true="-vkl" false="" v_kl}
  >>>
  parameter_meta {
    v_kl: ""
  }
}