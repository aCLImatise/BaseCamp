version 1.0

task PybelMachine {
  input {
    Boolean localLocal
    String hostHost
  }
  command <<<
    pybel machine \
      ~{true="--local" false="" localLocal} \
      ~{if defined(hostHost) then ("--host " +  '"' + hostHost + '"') else ""}
  >>>
}