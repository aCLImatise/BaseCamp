version 1.0

task HugeSort.pl {
  input {
    Boolean? keep
    String source
  }
  command <<<
    huge-sort.pl \
      ~{source} \
      ~{true="--keep" false="" keep}
  >>>
  parameter_meta {
    keep: "keep the unsorted file The default is to delete the unsorted file. "
    source: ""
  }
}