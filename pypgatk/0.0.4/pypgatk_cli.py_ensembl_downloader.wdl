version 1.0

task PypgatkClipyEnsembldownloader {
  input {
    File? config_file
    Directory? output_directory
    Directory? folder_prefix_release
    String? taxonomy
    Boolean? list_taxonomies
    Boolean? skip_gtf
    Boolean? skip_protein
    Boolean? skip_cds
    Boolean? skip_cdna
    Boolean? skip_ncrna
    Boolean? skip_vcf
  }
  command <<<
    pypgatk_cli_py ensembl_downloader \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(folder_prefix_release) then ("--folder_prefix_release " +  '"' + folder_prefix_release + '"') else ""} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if (list_taxonomies) then "--list_taxonomies" else ""} \
      ~{if (skip_gtf) then "--skip_gtf" else ""} \
      ~{if (skip_protein) then "--skip_protein" else ""} \
      ~{if (skip_cds) then "--skip_cds" else ""} \
      ~{if (skip_cdna) then "--skip_cdna" else ""} \
      ~{if (skip_ncrna) then "--skip_ncrna" else ""} \
      ~{if (skip_vcf) then "--skip_vcf" else ""}
  >>>
  parameter_meta {
    config_file: "Configuration file for the ensembl data\\ndownloader pipeline"
    output_directory: "Output directory for the peptide databases"
    folder_prefix_release: "Output folder prefix to download the data"
    taxonomy: "Taxonomy identifiers (comma separated list\\ncan be given) that will be use to download\\nthe data from Ensembl"
    list_taxonomies: "Print the list of all the taxonomies in\\nENSEMBL (https://www.ensembl.org)"
    skip_gtf: "Skip the gtf file during the download"
    skip_protein: "Skip the protein fasta file during download"
    skip_cds: "Skip the CDS file download"
    skip_cdna: "Skip the cDNA file download"
    skip_ncrna: "Skip the ncRNA file download"
    skip_vcf: "Skip the VCF variant file"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    Directory out_folder_prefix_release = "${in_folder_prefix_release}"
  }
}