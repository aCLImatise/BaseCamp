version 1.0

task Aria2c {
  input {
    Boolean maxMaxConnectionPerServer
  }
  command <<<
    aria2c \
      ~{true="--max-connection-per-server" false="" maxMaxConnectionPerServer}
  >>>
}