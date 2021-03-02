version 1.0

task MapCounter {
  input {
    Boolean? seg
    Int? window
    Boolean? list
    String? chromosome
    File bigwig_file
  }
  command <<<
    mapCounter \
      ~{bigwig_file} \
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
    list: "List all chromosomes in BigWig file"
    chromosome: "Specify the entries and order of sequences to analyze [ALL],\\nthe <string> should be a comma-delimited list (NO spaces)"
    bigwig_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}