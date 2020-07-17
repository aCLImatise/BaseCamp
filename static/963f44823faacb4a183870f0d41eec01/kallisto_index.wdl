version 1.0

task KallistoIndex {
  input {
    Boolean? make_unique
    String? arguments
    String fast_a_files
  }
  command <<<
    kallisto index \
      ~{arguments} \
      ~{fast_a_files} \
      ~{true="--make-unique" false="" make_unique}
  >>>
  parameter_meta {
    make_unique: "Replace repeated target names with unique names"
    arguments: ""
    fast_a_files: ""
  }
}