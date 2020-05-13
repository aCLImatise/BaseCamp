version 1.0

task Mugsy {
  input {
    Boolean duplicationsDuplications
    Boolean debugDebug
  }
  command <<<
    mugsy \
      ~{true="-duplications" false="" duplicationsDuplications} \
      ~{true="-debug" false="" debugDebug}
  >>>
}