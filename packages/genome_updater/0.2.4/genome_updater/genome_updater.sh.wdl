version 1.0

task GenomeUpdatersh {
  input {
    String? default_refseq
    String? category_default_all
    String? level_default_all
    File? formats_check_ftpftpncbinlmnihgovgenomesallreadmetxt
    Int? top_references_download
    String? data_downloaded_updated
    String? failed_downloads_data
    Directory? deletion_extra_found
    String? updated_assembly_accessions
    Int? updated_sequence_accessions
    String? list_urls_downloaded
    String? current_version_taxdumptargz
    Directory? output_directorydefault_tmpxxxxxxxxxx
    String? labeldefault_timestamp_yyyymmddhhmmss
    File? file_recover_data
    Int? default
    Int? md_downloaded_files
    String? s
    String? output_download_progress
    Float? exit_status_exit
    String? print_debug_information
    Float v_zero_dot_two_dot_four
  }
  command <<<
    genome_updater_sh \
      ~{v_zero_dot_two_dot_four} \
      ~{if defined(default_refseq) then ("-d " +  '"' + default_refseq + '"') else ""} \
      ~{if defined(category_default_all) then ("-c " +  '"' + category_default_all + '"') else ""} \
      ~{if defined(level_default_all) then ("-l " +  '"' + level_default_all + '"') else ""} \
      ~{if defined(formats_check_ftpftpncbinlmnihgovgenomesallreadmetxt) then ("-f " +  '"' + formats_check_ftpftpncbinlmnihgovgenomesallreadmetxt + '"') else ""} \
      ~{if defined(top_references_download) then ("-j " +  '"' + top_references_download + '"') else ""} \
      ~{if defined(data_downloaded_updated) then ("-k " +  '"' + data_downloaded_updated + '"') else ""} \
      ~{if defined(failed_downloads_data) then ("-i " +  '"' + failed_downloads_data + '"') else ""} \
      ~{if defined(deletion_extra_found) then ("-x " +  '"' + deletion_extra_found + '"') else ""} \
      ~{if defined(updated_assembly_accessions) then ("-u " +  '"' + updated_assembly_accessions + '"') else ""} \
      ~{if defined(updated_sequence_accessions) then ("-r " +  '"' + updated_sequence_accessions + '"') else ""} \
      ~{if defined(list_urls_downloaded) then ("-p " +  '"' + list_urls_downloaded + '"') else ""} \
      ~{if defined(current_version_taxdumptargz) then ("-a " +  '"' + current_version_taxdumptargz + '"') else ""} \
      ~{if defined(output_directorydefault_tmpxxxxxxxxxx) then ("-o " +  '"' + output_directorydefault_tmpxxxxxxxxxx + '"') else ""} \
      ~{if defined(labeldefault_timestamp_yyyymmddhhmmss) then ("-b " +  '"' + labeldefault_timestamp_yyyymmddhhmmss + '"') else ""} \
      ~{if defined(file_recover_data) then ("-e " +  '"' + file_recover_data + '"') else ""} \
      ~{if defined(default) then ("-t " +  '"' + default + '"') else ""} \
      ~{if defined(md_downloaded_files) then ("-m " +  '"' + md_downloaded_files + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(output_download_progress) then ("-w " +  '"' + output_download_progress + '"') else ""} \
      ~{if defined(exit_status_exit) then ("-n " +  '"' + exit_status_exit + '"') else ""} \
      ~{if defined(print_debug_information) then ("-D " +  '"' + print_debug_information + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/genome_updater:0.2.4--0"
  }
  parameter_meta {
    default_refseq: "[genbank, refseq]\\nDefault: refseq"
    category_default_all: "Category [all, reference genome, representative genome, na]\\nDefault: all"
    level_default_all: "level [all, Complete Genome, Chromosome, Scaffold, Contig]\\nDefault: all"
    formats_check_ftpftpncbinlmnihgovgenomesallreadmetxt: "formats [genomic.fna.gz,assembly_report.txt, ...]\\ncheck ftp://ftp.ncbi.nlm.nih.gov/genomes/all/README.txt for all file formats\\nDefault: assembly_report.txt"
    top_references_download: "of top references for each species/taxids to download [\\\"\\\", species:INT, taxids:INT]. Example: \\\"species:3\\\". Selection is based on 1) RefSeq Category, 2) Assembly level, 3) Relation to type material and 4) Date (most recent first)\\nDefault: \\\"\\\""
    data_downloaded_updated: ", no data is downloaded or updated - just checks for available sequences and changes"
    failed_downloads_data: "failed downloads or any incomplete data from a previous run, keep current version"
    deletion_extra_found: "the deletion of extra files if some are found in the repository folder"
    updated_assembly_accessions: "of updated assembly accessions (Added/Removed, assembly accession, url)"
    updated_sequence_accessions: "of updated sequence accessions (Added/Removed, assembly accession, genbank accession, refseq accession, sequence length, taxid). Only available when file assembly_report.txt selected and successfully downloaded"
    list_urls_downloaded: "list of URLs for downloaded and failed files"
    current_version_taxdumptargz: "the current version of the Taxonomy database (taxdump.tar.gz)"
    output_directorydefault_tmpxxxxxxxxxx: "output directory\\nDefault: ./tmp.XXXXXXXXXX"
    labeldefault_timestamp_yyyymmddhhmmss: "label\\nDefault: current timestamp (YYYY-MM-DD_HH-MM-SS)"
    file_recover_data: "\\\"assembly_summary.txt\\\" file to recover data from\\nDefault: \\\"\\\""
    default: "Default: 1"
    md_downloaded_files: "MD5 for downloaded files"
    s: "output"
    output_download_progress: "output with download progress (%) and download version at the end"
    exit_status_exit: "exit status. Exit Code = 1 if more than N files failed to download (integer for file number, float for percentage, 0 -> off)\\nDefault: 0"
    print_debug_information: "print debug information and exit"
    v_zero_dot_two_dot_four: "-g Organism group (one or more comma-separated entries) [archaea, bacteria, fungi, human (also contained in vertebrate_mammalian), invertebrate, metagenomes (genbank), other (synthetic genomes - only genbank), plant, protozoa, vertebrate_mammalian, vertebrate_other, viral (only refseq)]. Example: archaea,bacteria"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directorydefault_tmpxxxxxxxxxx = "${in_output_directorydefault_tmpxxxxxxxxxx}"
  }
}