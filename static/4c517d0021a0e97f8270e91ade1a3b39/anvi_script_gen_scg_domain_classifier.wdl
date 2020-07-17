version 1.0

task AnviScriptGenScgDomainClassifier {
  input {
    String? genomes_dir
    File? output_file_name
  }
  command <<<
    anvi-script-gen-scg-domain-classifier \
      ~{if defined(genomes_dir) then ("--genomes-dir " +  '"' + genomes_dir + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  parameter_meta {
    genomes_dir: "This should be a directory that contains a directory per domain for single-copy core gene collections a given version of anvi'o knows about. For instance, if there are collections for archaea, bacteria, and eukarya, then this directory should contain subdirectories with these names. Contents of which should be contigs databases that belong to those domains. These genomes will be used to generate the classifier."
    output_file_name: "Output file name for the classifier."
  }
}