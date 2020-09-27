version 1.0

task KodojaBuildpy {
  input {
    File? output_dir
    Int? threads
    String? host_taxid
    Int? download_parallel
    Boolean? no_download
    Boolean? list_extra_files_added
    Boolean? list_of_extra_files
    Boolean? all_viruses
    File? kraken_tax
    Int? kraken_km_er
    Int? kraken_minimizer
    String? db_tag
  }
  command <<<
    kodoja_build_py \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(host_taxid) then ("--host_taxid " +  '"' + host_taxid + '"') else ""} \
      ~{if defined(download_parallel) then ("--download_parallel " +  '"' + download_parallel + '"') else ""} \
      ~{if (no_download) then "--no_download" else ""} \
      ~{if (list_extra_files_added) then "-e" else ""} \
      ~{if (list_of_extra_files) then "-x" else ""} \
      ~{if (all_viruses) then "--all_viruses" else ""} \
      ~{if defined(kraken_tax) then ("--kraken_tax " +  '"' + kraken_tax + '"') else ""} \
      ~{if defined(kraken_km_er) then ("--kraken_kmer " +  '"' + kraken_km_er + '"') else ""} \
      ~{if defined(kraken_minimizer) then ("--kraken_minimizer " +  '"' + kraken_minimizer + '"') else ""} \
      ~{if defined(db_tag) then ("--db_tag " +  '"' + db_tag + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "Output directory path, required"
    threads: "Number of threads, default=1"
    host_taxid: "Host tax ID"
    download_parallel: "Parallel genome download, default=4"
    no_download: "Genomes have already been downloaded"
    list_extra_files_added: "[EXTRA_FILES [EXTRA_FILES ...]], --extra_files [EXTRA_FILES [EXTRA_FILES ...]]\\nList of extra files added to \\\"extra\\\" dir"
    list_of_extra_files: "[EXTRA_TAXIDS [EXTRA_TAXIDS ...]], --extra_taxids [EXTRA_TAXIDS [EXTRA_TAXIDS ...]]\\nList of taxID of extra files"
    all_viruses: "Build databases with all viruses (not plant specific)"
    kraken_tax: "Path to taxonomy directory"
    kraken_km_er: "Kraken kmer size, default=31"
    kraken_minimizer: "Kraken minimizer size, default=15"
    db_tag: "Suffix for databases"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}