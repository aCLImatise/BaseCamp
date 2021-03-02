version 1.0

task NcbiGeneResultsToPythonpy {
  input {
    File? outfile
    String ncbi_gene_tsv
  }
  command <<<
    ncbi_gene_results_to_python_py \
      ~{ncbi_gene_tsv} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0"
  }
  parameter_meta {
    outfile: "Write current citation report to an ASCII text file.\\n"
    ncbi_gene_tsv: "gene_result.tsv downloaded from NCBI Gene"
  }
  output {
    File out_stdout = stdout()
  }
}