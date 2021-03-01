version 1.0

task DRAMpyStrainer {
  input {
    File? input_annotations
    File? input_fast_a
    String? output_fast_a
    Boolean? fast_as
    Boolean? scaffolds
    Boolean? genes
    Boolean? identifiers
    Boolean? categories
    Boolean? taxonomy
    String? completeness
    String? contamination
  }
  command <<<
    DRAM_py strainer \
      ~{if defined(input_annotations) then ("--input_annotations " +  '"' + input_annotations + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input_fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output_fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if (fast_as) then "--fastas" else ""} \
      ~{if (scaffolds) then "--scaffolds" else ""} \
      ~{if (genes) then "--genes" else ""} \
      ~{if (identifiers) then "--identifiers" else ""} \
      ~{if (categories) then "--categories" else ""} \
      ~{if (taxonomy) then "--taxonomy" else ""} \
      ~{if defined(completeness) then ("--completeness " +  '"' + completeness + '"') else ""} \
      ~{if defined(contamination) then ("--contamination " +  '"' + contamination + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dram:1.1.1--py_0"
  }
  parameter_meta {
    input_annotations: "annotations file to pull genes from (default: None)"
    input_fast_a: "fasta file to filter (default: None)"
    output_fast_a: "location to write filtered fasta (default:\\npull_genes.fasta)"
    fast_as: "[FASTAS [FASTAS ...]]\\nspace separated list of fastas to keep (default: None)"
    scaffolds: "[SCAFFOLDS [SCAFFOLDS ...]]\\nspace separated list of scaffolds to keep (default:\\nNone)"
    genes: "[GENES [GENES ...]]\\nspace separated list of genes to keep (default: None)"
    identifiers: "[IDENTIFIERS [IDENTIFIERS ...]]\\ndatabase identifiers to keep (default: None)"
    categories: "[CATEGORIES [CATEGORIES ...]]\\ndistillate categories to keep genes from (default:\\nNone)"
    taxonomy: "[TAXONOMY [TAXONOMY ...]]\\nLevel of GTDBTk taxonomy to keep (e.g. c__Clostridia),\\nspace separated list (default: None)"
    completeness: "Minimum completeness of genome to keep genes (default:\\nNone)"
    contamination: "Maximum contamination of genome to keep genes\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}