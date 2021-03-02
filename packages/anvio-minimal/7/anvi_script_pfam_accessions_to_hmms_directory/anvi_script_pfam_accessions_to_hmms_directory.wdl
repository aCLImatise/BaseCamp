version 1.0

task Anviscriptpfamaccessionstohmmsdirectory {
  input {
    Array[String] pfam_accessions_list
    File? pfam_accessions_file
    Directory? output_directory
  }
  command <<<
    anvi_script_pfam_accessions_to_hmms_directory \
      ~{if defined(pfam_accessions_list) then ("--pfam-accessions-list " +  '"' + pfam_accessions_list + '"') else ""} \
      ~{if defined(pfam_accessions_file) then ("--pfam-accessions-file " +  '"' + pfam_accessions_file + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    pfam_accessions_list: "One or more PFAM accession IDs (such as PF14437.6). If\\nyou have multiple accessions, you can separate them\\nfrom each other with a space. If you have too many,\\nconsider using the `--pfam-accessions-file` parameter\\ninstead. (default: None)"
    pfam_accessions_file: "A single column text file where each column is a\\nsingle PFAM accession ID (such as PF14437.6). You may\\nhave as many accession ids as you like in this file.\\n(default: None)"
    output_directory: "Output directory for the anvi'o-formatted HMMs. Choose\\nthe name wisely as this will be the name that will\\nappear in the contigs database after you provide it\\nwith `-H` flag to `anvi-run-hmms`. We suggest you to\\nuse a name that does not include an of those millenial\\ncharacters (like space, question mark, comma, and\\nsuch, you know). (default: None)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}