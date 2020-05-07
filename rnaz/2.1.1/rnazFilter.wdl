version 1.0

task RnazFilter.pl {
  input {
    Boolean countCount
    Boolean manMan
  }
  command <<<
    rnazFilter.pl \
      ~{true="--count" false="" countCount} \
      ~{true="--man" false="" manMan}
  >>>
}