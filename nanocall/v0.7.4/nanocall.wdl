version 1.0

task Nanocall {
  input {
    String? nanoNanoCall
  }
  command <<<
    nanocall \
      ~{nanoNanoCall}
  >>>
}