version 1.0

task ComparemAaUsage {
  input {
    Boolean? counts
    File? file_ext
    Int? cpus
    Boolean? silent
    String protein_gene_files
    String output_file
    String genome
  }
  command <<<
    comparem aa_usage \
      ~{protein_gene_files} \
      ~{output_file} \
      ~{genome} \
      ~{if (counts) then "--counts" else ""} \
      ~{if defined(file_ext) then ("--file_ext " +  '"' + file_ext + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/comparem:0.1.2--py_0"
  }
  parameter_meta {
    counts: "output raw counts instead of frequencies"
    file_ext: "extension of files to process (default: faa)"
    cpus: "number of CPUs to use (default: 1)"
    silent: "suppress output"
    protein_gene_files: "input files with genes in amino acid space"
    output_file: "output file indicating amino acid usage for each"
    genome: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}