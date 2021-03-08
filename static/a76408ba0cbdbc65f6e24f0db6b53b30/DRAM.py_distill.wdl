version 1.0

task DRAMpyDistill {
  input {
    File? input_file
    Directory? output_dir
    File? rrna_path
    File? trna_path
    String? group_by_column
    String? custom_distillate
    Boolean? distillate_gene_names
    Int? genomes_per_product
  }
  command <<<
    DRAM_py distill \
      ~{if defined(input_file) then ("--input_file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(rrna_path) then ("--rrna_path " +  '"' + rrna_path + '"') else ""} \
      ~{if defined(trna_path) then ("--trna_path " +  '"' + trna_path + '"') else ""} \
      ~{if defined(group_by_column) then ("--groupby_column " +  '"' + group_by_column + '"') else ""} \
      ~{if defined(custom_distillate) then ("--custom_distillate " +  '"' + custom_distillate + '"') else ""} \
      ~{if (distillate_gene_names) then "--distillate_gene_names" else ""} \
      ~{if defined(genomes_per_product) then ("--genomes_per_product " +  '"' + genomes_per_product + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dram:1.2.0--py_0"
  }
  parameter_meta {
    input_file: "Annotations path (default: None)"
    output_dir: "Directory to write summarized genomes (default: None)"
    rrna_path: "rRNA output from annotation (default: None)"
    trna_path: "tRNA output from annotation (default: None)"
    group_by_column: "Column from annotations to group as organism units\\n(default: fasta)"
    custom_distillate: "Custom distillate form to add your own modules\\n(default: None)"
    distillate_gene_names: "Give names of genes instead of counts in genome\\nmetabolism summary (default: False)"
    genomes_per_product: "Number of genomes per product.html output. Decrease\\nvalue if getting JavaScript Error: Maximum call stack\\nsize exceeded when viewing product.html in browser.\\n(default: 1000)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}