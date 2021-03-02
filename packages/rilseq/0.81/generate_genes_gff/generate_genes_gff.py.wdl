version 1.0

task GenerateGenesGffpy {
  input {
    File? bc_chr_list
    String bc_dir
  }
  command <<<
    generate_genes_gff_py \
      ~{bc_dir} \
      ~{if defined(bc_chr_list) then ("--BC_chrlist " +  '"' + bc_chr_list + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rilseq:0.81--py_0"
  }
  parameter_meta {
    bc_chr_list: "A comma separated dictionary of chromosome names from\\nthe BioCyc name to the bam name. See the names of\\nchromosomes in bam file using samtools view -H\\nfoo.bam.\\n"
    bc_dir: "BioCyc flat-files directory."
  }
  output {
    File out_stdout = stdout()
  }
}