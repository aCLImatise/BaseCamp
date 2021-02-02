version 1.0

task Centrifugedownload {
  input {
    Directory? folder_files_downloaded
    Boolean? threads_number_processes
    String? domain_download_comma
    String? only_download_genomes_specified_assembly
    String? only_download_genomes_specified_refseq
    String? only_download_specified
    String? download_using_options
    Boolean? download_rna_sequences
    Boolean? filter_unplaced_sequences
    Boolean? mask_lowcomplexity_regions
    Boolean? modify_header_include
    Boolean? verbose_mode
  }
  command <<<
    centrifuge_download \
      ~{if defined(folder_files_downloaded) then ("-o " +  '"' + folder_files_downloaded + '"') else ""} \
      ~{if (threads_number_processes) then "-P" else ""} \
      ~{if defined(domain_download_comma) then ("-d " +  '"' + domain_download_comma + '"') else ""} \
      ~{if defined(only_download_genomes_specified_assembly) then ("-a " +  '"' + only_download_genomes_specified_assembly + '"') else ""} \
      ~{if defined(only_download_genomes_specified_refseq) then ("-c " +  '"' + only_download_genomes_specified_refseq + '"') else ""} \
      ~{if defined(only_download_specified) then ("-t " +  '"' + only_download_specified + '"') else ""} \
      ~{if defined(download_using_options) then ("-g " +  '"' + download_using_options + '"') else ""} \
      ~{if (download_rna_sequences) then "-r" else ""} \
      ~{if (filter_unplaced_sequences) then "-u" else ""} \
      ~{if (mask_lowcomplexity_regions) then "-m" else ""} \
      ~{if (modify_header_include) then "-l" else ""} \
      ~{if (verbose_mode) then "-v" else ""}
  >>>
  parameter_meta {
    folder_files_downloaded: "Folder to which the files are downloaded. Default: '.'."
    threads_number_processes: "<# of threads>      Number of processes when downloading (uses xargs). Default: '1'"
    domain_download_comma: "What domain to download. One or more of bacteria, viral, archaea, fungi, protozoa, invertebrate, plant, vertebrate_mammalian, vertebrate_other (comma separated)."
    only_download_genomes_specified_assembly: "Only download genomes with the specified assembly level. Default: 'Complete Genome'. Use 'Any' for any assembly level."
    only_download_genomes_specified_refseq: "Only download genomes in the specified refseq category. Default: any."
    only_download_specified: "Only download the specified taxonomy IDs, comma separated. Default: any."
    download_using_options: "Download using program. Options: rsync, curl, wget. Default wget (auto-detected)."
    download_rna_sequences: "Download RNA sequences, too."
    filter_unplaced_sequences: "Filter unplaced sequences."
    mask_lowcomplexity_regions: "Mask low-complexity regions using dustmasker. Default: off."
    modify_header_include: "Modify header to include taxonomy ID. Default: off."
    verbose_mode: "Verbose mode"
  }
  output {
    File out_stdout = stdout()
  }
}