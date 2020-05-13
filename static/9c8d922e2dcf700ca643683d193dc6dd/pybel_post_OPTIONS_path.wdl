version 1.0

task PybelPostOPTIONSPath {
  input {
    String hostHost
  }
  command <<<
    pybel post OPTIONS path \
      ~{if defined(hostHost) then ("--host " +  '"' + hostHost + '"') else ""}
  >>>
}