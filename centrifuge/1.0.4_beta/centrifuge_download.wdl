version 1.0

task CentrifugeDownload {
  input {
    Directory? folder_files_downloaded
    Boolean? threads_number_processes
    String? domain_download_one
    String? only_download_genomes_default
    String? only_download_genomes_specified
    String? only_download_specified
    String? download_using_curl
    Boolean? download_rna_sequences
    Boolean? filter_unplaced_sequences
    Boolean? mask_lowcomplexity_regions
    Boolean? modify_header_include
    Boolean? verbose_mode
  }
  command <<<
    centrifuge-download \
      ~{if defined(folder_files_downloaded) then ("-o " +  '"' + folder_files_downloaded + '"') else ""} \
      ~{true="-P" false="" threads_number_processes} \
      ~{if defined(domain_download_one) then ("-d " +  '"' + domain_download_one + '"') else ""} \
      ~{if defined(only_download_genomes_default) then ("-a " +  '"' + only_download_genomes_default + '"') else ""} \
      ~{if defined(only_download_genomes_specified) then ("-c " +  '"' + only_download_genomes_specified + '"') else ""} \
      ~{if defined(only_download_specified) then ("-t " +  '"' + only_download_specified + '"') else ""} \
      ~{if defined(download_using_curl) then ("-g " +  '"' + download_using_curl + '"') else ""} \
      ~{true="-r" false="" download_rna_sequences} \
      ~{true="-u" false="" filter_unplaced_sequences} \
      ~{true="-m" false="" mask_lowcomplexity_regions} \
      ~{true="-l" false="" modify_header_include} \
      ~{true="-v" false="" verbose_mode}
  >>>
  parameter_meta {
    folder_files_downloaded: "Folder to which the files are downloaded. Default: '.'."
    threads_number_processes: "<# of threads>      Number of processes when downloading (uses xargs). Default: '1'"
    domain_download_one: "What domain to download. One or more of bacteria, viral, archaea, fungi, protozoa, invertebrate, plant, vertebrate_mammalian, vertebrate_other (comma separated)."
    only_download_genomes_default: "Only download genomes with the specified assembly level. Default: 'Complete Genome'. Use 'Any' for any assembly level."
    only_download_genomes_specified: "Only download genomes in the specified refseq category. Default: any."
    only_download_specified: "Only download the specified taxonomy IDs, comma separated. Default: any."
    download_using_curl: "Download using program. Options: rsync, curl, wget. Default curl (auto-detected)."
    download_rna_sequences: "Download RNA sequences, too."
    filter_unplaced_sequences: "Filter unplaced sequences."
    mask_lowcomplexity_regions: "Mask low-complexity regions using dustmasker. Default: off."
    modify_header_include: "Modify header to include taxonomy ID. Default: off."
    verbose_mode: "Verbose mode"
  }
}