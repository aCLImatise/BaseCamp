version 1.0

task Dadaist2transposetaxapy {
  input {
    Int? min_sum
    String? top_tax_a
    Boolean? global_top
    String? other_label
  }
  command <<<
    dadaist2_transposetaxa_py \
      ~{if defined(min_sum) then ("--minsum " +  '"' + min_sum + '"') else ""} \
      ~{if defined(top_tax_a) then ("--toptaxa " +  '"' + top_tax_a + '"') else ""} \
      ~{if (global_top) then "--global-top" else ""} \
      ~{if defined(other_label) then ("--other-label " +  '"' + other_label + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dadaist2:0.8.0--hdfd78af_0"
  }
  parameter_meta {
    min_sum: "Minimum sum of abundances of a taxon rank"
    top_tax_a: "Print top N taxa in each sample, and collapse the\\nothers in 'Other'."
    global_top: "When using toptaxa, print the global top N taxa"
    other_label: "Name for the new category for unclassified counts\\n"
  }
  output {
    File out_stdout = stdout()
  }
}