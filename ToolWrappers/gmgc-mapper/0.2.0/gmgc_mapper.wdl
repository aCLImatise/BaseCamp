version 1.0

task Gmgcmapper {
  input {
    File? path_input_genome
    Directory? output_directory_created
    File? nt_genes
    File? aa_genes
  }
  command <<<
    gmgc_mapper \
      ~{if defined(path_input_genome) then ("--input " +  '"' + path_input_genome + '"') else ""} \
      ~{if defined(output_directory_created) then ("--output " +  '"' + output_directory_created + '"') else ""} \
      ~{if defined(nt_genes) then ("--nt-genes " +  '"' + nt_genes + '"') else ""} \
      ~{if defined(aa_genes) then ("--aa-genes " +  '"' + aa_genes + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_input_genome: "Path to the input genome FASTA file. (default: None)"
    output_directory_created: "Output directory (will be created if non-existent)\\n(default: None)"
    nt_genes: "Path to the input DNA gene file (FASTA format)\\n(default: None)"
    aa_genes: "Path to the input amino acid gene file (FASTA format)\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_created = "${in_output_directory_created}"
  }
}