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
      ~{if (seg) then "--seg" else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    seg: "Outputs in SEG format"
    window: "Specify the size of non-overlapping windows [1000]"
    list: "List all chromosomes in FASTA reference file"
    chromosome: "Specify the entries and order of sequences to analyze [ALL],\\nthe <string> should be a comma-delimited list (NO spaces)"
    fast_a_reference: ""
  }
  output {
    File out_stdout = stdout()
  }
}