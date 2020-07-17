version 1.0

task Pheniqs {
  input {
    String mux
  }
  command <<<
    pheniqs \
      ~{mux}
  >>>
  parameter_meta {
    mux: "Multiplex and Demultiplex annotated DNA sequence reads"
  }
}