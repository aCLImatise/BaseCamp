version 1.0

task KallistoIndex {
  input {
    File? index
    Int? km_er_size
    String? arguments
    String fast_a_files
  }
  command <<<
    kallisto index \
      ~{arguments} \
      ~{fast_a_files} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""}
  >>>
  parameter_meta {
    index: "Filename for the kallisto index to be constructed"
    km_er_size: "k-mer (odd) length (default: 31, max value: 31)\\n--make-unique           Replace repeated target names with unique names\\n"
    arguments: ""
    fast_a_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}