version 1.0

task FilterMatrixByGenomepy {
  input {
    File? in_matrix
    String? out_prefix
    File? genomes
    String? actions
  }
  command <<<
    filter_matrix_by_genome_py \
      ~{if defined(in_matrix) then ("--in_matrix " +  '"' + in_matrix + '"') else ""} \
      ~{if defined(out_prefix) then ("--out_prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(genomes) then ("--genomes " +  '"' + genomes + '"') else ""} \
      ~{if defined(actions) then ("--actions " +  '"' + actions + '"') else ""}
  >>>
  parameter_meta {
    in_matrix: "/path/to/NASP_matrix [REQUIRED]"
    out_prefix: "prefix for output files [REQUIRED]"
    genomes: "/path/to/genomes_file [new line delimited] [REQUIRED]"
    actions: "action to perform (keep, remove), defaults to keep\\n"
  }
  output {
    File out_stdout = stdout()
  }
}