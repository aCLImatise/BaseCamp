version 1.0

task EsimsaPeaklistMax charge {
  input {
    String? outputOutput
  }
  command <<<
    esimsa peaklist max charge \
      ~{outputOutput}
  >>>
}