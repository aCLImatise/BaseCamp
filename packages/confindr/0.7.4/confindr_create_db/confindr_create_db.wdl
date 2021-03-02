version 1.0

task ConfindrCreateDb {
  input {
    Directory? output_folder
    Directory? input_folder
    String? genus
    Int? desired_number_genes
  }
  command <<<
    confindr_create_db \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(input_folder) then ("--input_folder " +  '"' + input_folder + '"') else ""} \
      ~{if defined(genus) then ("--genus " +  '"' + genus + '"') else ""} \
      ~{if defined(desired_number_genes) then ("--desired_number_genes " +  '"' + desired_number_genes + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/confindr:0.7.4--py_0"
  }
  parameter_meta {
    output_folder: "Folder to first store temporary files, and eventually\\nstore the created database."
    input_folder: "Folder with your input files to try to find core\\ngenes. Each gene should be in a FASTA file. Expected\\nextension is .fasta"
    genus: "Name of genus you're creating a database for."
    desired_number_genes: "Minimum number of genes you want to find.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}