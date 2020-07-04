version 1.0

task GdtoolsDOWNLOAD {
  input {
    String? login
    String? download_dir
    String? genome_diff_dir
    Boolean? test
    Boolean? reference_only
    Boolean? un_gzip
  }
  command <<<
    gdtools DOWNLOAD \
      ~{if defined(login) then ("--login " +  '"' + login + '"') else ""} \
      ~{if defined(download_dir) then ("--download-dir " +  '"' + download_dir + '"') else ""} \
      ~{if defined(genome_diff_dir) then ("--genome-diff-dir " +  '"' + genome_diff_dir + '"') else ""} \
      ~{true="--test" false="" test} \
      ~{true="--reference-only" false="" reference_only} \
      ~{true="--ungzip" false="" un_gzip}
  >>>
  parameter_meta {
    login: "Login user:password information for private server access."
    download_dir: "Output directory to download file to. (DEFAULT=02_Downloads)"
    genome_diff_dir: "Directory to search for genome diff files. (DEFAULT=01_Data)"
    test: "Test urls in genome diff files, doesn't download the file"
    reference_only: "Only downloads the reference sequence files for this file"
    un_gzip: "Decompress gzipped read files"
  }
}