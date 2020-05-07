version 1.0

task Microhapdb {
  input {
    Boolean filesFiles
    String? cmdCmd
  }
  command <<<
    microhapdb \
      ~{cmdCmd} \
      ~{true="--files" false="" filesFiles}
  >>>
}