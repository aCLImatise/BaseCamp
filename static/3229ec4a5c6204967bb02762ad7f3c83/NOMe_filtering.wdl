version 1.0

task NOMeFiltering {
  input {
    File? genome_folder
    String? var_input
  }
  command <<<
    NOMe_filtering \
      ~{var_input} \
      ~{if defined(genome_folder) then ("--genome_folder " +  '"' + genome_folder + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bismark:0.23.0--0"
  }
  parameter_meta {
    genome_folder: "Enter the genome folder you wish to use to extract sequences from (full path only!). Accepted\\nformats are FastA files ending with '.fa' or '.fasta'. Specifying a genome folder path is mandatory."
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}