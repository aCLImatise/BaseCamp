version 1.0

task AugurTree {
  input {
    String? alignment
    String? method
    File? file_name_write
    Boolean? substitution_model
    Int? n_threads
    File? vcf_reference
    File? exclude_sites
    String? tree_builder_args
  }
  command <<<
    augur tree \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(file_name_write) then ("--output " +  '"' + file_name_write + '"') else ""} \
      ~{if (substitution_model) then "--substitution-model" else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(vcf_reference) then ("--vcf-reference " +  '"' + vcf_reference + '"') else ""} \
      ~{if defined(exclude_sites) then ("--exclude-sites " +  '"' + exclude_sites + '"') else ""} \
      ~{if defined(tree_builder_args) then ("--tree-builder-args " +  '"' + tree_builder_args + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augur:11.1.2--py_1"
  }
  parameter_meta {
    alignment: "alignment in fasta or VCF format (default: None)"
    method: "tree builder to use (default: iqtree)"
    file_name_write: "file name to write tree to (default: None)"
    substitution_model: "{HKY,GTR,HKY+G,GTR+G,GTR+R10}\\nsubstitution model to use. Specify 'none' to run\\nModelTest. Currently, only available for IQTREE.\\n(default: GTR)"
    n_threads: "number of threads to use; specifying the value 'auto'\\nwill cause the number of available CPU cores on your\\nsystem, if determinable, to be used (default: 1)"
    vcf_reference: "fasta file of the sequence the VCF was mapped to\\n(default: None)"
    exclude_sites: "file name of one-based sites to exclude for raw tree\\nbuilding (BED format in .bed files, DRM format in tab-\\ndelimited files, or one position per line) (default:\\nNone)"
    tree_builder_args: "extra arguments to be passed directly to the\\nexecutable of the requested tree method (e.g., --tree-\\nbuilder-args=\\\"-czb\\\") (default: )\\n"
  }
  output {
    File out_stdout = stdout()
  }
}