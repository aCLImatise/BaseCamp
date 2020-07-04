version 1.0

task GcCounter {
  input {
    Boolean? seg
    Int? window
    Boolean? list
    String? chromosome
    String fast_a_reference
  }
  command <<<
    gcCounter \
      ~{fast_a_reference} \
      ~{true="--seg" false="" seg} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{true="--list" false="" list} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""}
  >>>
  parameter_meta {
    seg: "Outputs in SEG format"
    window: "Specify the size of non-overlapping windows [1000]"
    list: "List all chromosomes in FASTA reference file"
    chromosome: "Specify the entries and order of sequences to analyze [ALL], the <string> should be a comma-delimited list (NO spaces)"
    fast_a_reference: ""
  }
}