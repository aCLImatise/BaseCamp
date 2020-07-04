version 1.0

task ComparemStopUsage {
  input {
    Boolean? counts
    Boolean? mean_gene_length
    File? file_ext
    String? cpus
    Boolean? silent
    String nucleotide_gene_files
    String output_file
  }
  command <<<
    comparem stop_usage \
      ~{nucleotide_gene_files} \
      ~{output_file} \
      ~{true="--counts" false="" counts} \
      ~{true="--mean_gene_length" false="" mean_gene_length} \
      ~{if defined(file_ext) then ("--file_ext " +  '"' + file_ext + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    counts: "output raw counts instead of frequencies"
    mean_gene_length: "report mean gene length for genes with each stop codon"
    file_ext: "extension of files to process (default: fna)"
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output"
    nucleotide_gene_files: "input files with genes in nucleotide space"
    output_file: "output file indicating stop codon usage of each genome"
  }
}