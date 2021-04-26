version 1.0

task DRAMpyNeighborhoods {
  input {
    File? input_file
    Directory? output_dir
    Boolean? genes
    Boolean? identifiers
    String? categories
    File? genes_loc
    File? scaffolds_loc
    Int? distance_genes
    Int? distance_bp
  }
  command <<<
    DRAM_py neighborhoods \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (genes) then "--genes" else ""} \
      ~{if (identifiers) then "--identifiers" else ""} \
      ~{if defined(categories) then ("--categories " +  '"' + categories + '"') else ""} \
      ~{if defined(genes_loc) then ("--genes_loc " +  '"' + genes_loc + '"') else ""} \
      ~{if defined(scaffolds_loc) then ("--scaffolds_loc " +  '"' + scaffolds_loc + '"') else ""} \
      ~{if defined(distance_genes) then ("--distance_genes " +  '"' + distance_genes + '"') else ""} \
      ~{if defined(distance_bp) then ("--distance_bp " +  '"' + distance_bp + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dram:1.2.2--pyhdfd78af_0"
  }
  parameter_meta {
    input_file: "Annotations path (default: None)"
    output_dir: "Directory to write gene neighborhoods (default: None)"
    genes: "[GENES ...]   Gene names from DRAM to find neighborhoods around\\n(default: None)"
    identifiers: "[IDENTIFIERS ...]\\nDatabase identifiers assigned by DRAM to find\\nneighborhoods around (default: None)"
    categories: "Distillate categories to build gene neighborhoods\\naround. (default: None)"
    genes_loc: "Location of genes.fna/genes.faa file to filter to\\nneighborhoods (default: None)"
    scaffolds_loc: "Location of scaffolds.fna file to filter to\\nneighborhoods (default: None)"
    distance_genes: "Number of genes away from center to include in\\nneighborhoods (default: None)"
    distance_bp: "Number of genes away from center to include in\\nneighborhoods (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}