version 1.0

task InStrainProfileGenes {
  input {
    File? gene_file
    String? is
    Boolean? store_everything
    Int? processes
    Boolean? debug
  }
  command <<<
    inStrain profile_genes \
      ~{if defined(gene_file) then ("--gene_file " +  '"' + gene_file + '"') else ""} \
      ~{if defined(is) then ("--IS " +  '"' + is + '"') else ""} \
      ~{if (store_everything) then "--store_everything" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/instrain:1.5.3--py_0"
  }
  parameter_meta {
    gene_file: "Path to prodigal .fna genes file. If file ends in .gb\\nor .gbk, will treat as a genbank file (EXPERIMENTAL;\\nthe name of the gene must be in the gene qualifier)\\n(default: None)"
    is: "an inStrain profile object (default: None)"
    store_everything: "Store gene sequences in the IS object (default: False)"
    processes: "Number of processes to use (default: 6)"
    debug: "Make extra debugging output (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}