version 1.0

task ComparemStopUsage {
  input {
    Boolean? counts
    Boolean? mean_gene_length
    File? file_ext
    Int? cpus
    Boolean? silent
    String nucleotide_gene_files
    String output_file
  }
  command <<<
    comparem stop_usage \
      ~{nucleotide_gene_files} \
      ~{output_file} \
      ~{if (counts) then "--counts" else ""} \
      ~{if (mean_gene_length) then "--mean_gene_length" else ""} \
      ~{if defined(file_ext) then ("--file_ext " +  '"' + file_ext + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
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
  output {
    File out_stdout = stdout()
  }
}