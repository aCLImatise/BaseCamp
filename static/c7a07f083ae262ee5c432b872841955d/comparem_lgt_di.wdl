version 1.0

task ComparemLgtDi {
  input {
    File? file_ext
    Float? crit_value
    Int? cpus
    Boolean? silent
    String nucleotide_gene_files
    String output_dir
  }
  command <<<
    comparem lgt_di \
      ~{nucleotide_gene_files} \
      ~{output_dir} \
      ~{if defined(file_ext) then ("--file_ext " +  '"' + file_ext + '"') else ""} \
      ~{if defined(crit_value) then ("--crit_value " +  '"' + crit_value + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    file_ext: "extension of files to process (default: fna)"
    crit_value: "critical value for defining deviant genes (default:\\n0.001)"
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output"
    nucleotide_gene_files: "input files with genes in nucleotide space"
    output_dir: "output directory to write dinucleotide usage for each\\ngene in each genome"
  }
  output {
    File out_stdout = stdout()
  }
}