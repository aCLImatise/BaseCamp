version 1.0

task GenerateGenesGff.py {
  input {
    String? bc_chr_list
    String bc_dir
  }
  command <<<
    generate_genes_gff.py \
      ~{bc_dir} \
      ~{if defined(bc_chr_list) then ("--BC_chrlist " +  '"' + bc_chr_list + '"') else ""}
  >>>
  parameter_meta {
    bc_chr_list: "A comma separated dictionary of chromosome names from the BioCyc name to the bam name. See the names of chromosomes in bam file using samtools view -H foo.bam."
    bc_dir: "BioCyc flat-files directory."
  }
}