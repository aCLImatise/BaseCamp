version 1.0

task Anviscriptgenscgdomainclassifier {
  input {
    Directory? genomes_dir
    File? output_file_name
  }
  command <<<
    anvi_script_gen_scg_domain_classifier \
      ~{if defined(genomes_dir) then ("--genomes-dir " +  '"' + genomes_dir + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genomes_dir: "This should be a directory that contains a directory\\nper domain for single-copy core gene collections a\\ngiven version of anvi'o knows about. For instance, if\\nthere are collections for archaea, bacteria, and\\neukarya, then this directory should contain\\nsubdirectories with these names. Contents of which\\nshould be contigs databases that belong to those\\ndomains. These genomes will be used to generate the\\nclassifier."
    output_file_name: "Output file name for the classifier.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}