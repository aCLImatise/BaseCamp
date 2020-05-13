version 1.0

task Rsidx {
  input {
    String? subSubCmd
  }
  command <<<
    rsidx \
      ~{subSubCmd}
  >>>
}