version 1.0

task Myriad {
  input {
    Boolean clientClient
    Boolean serverServerClient
  }
  command <<<
    myriad \
      ~{true="--client" false="" clientClient} \
      ~{true="--serverclient" false="" serverServerClient}
  >>>
}