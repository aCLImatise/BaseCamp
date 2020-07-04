version 1.0

task GenomepyInstall {
  input {
    String? genomes_dir
    String? local_name
    String? mask
    String? regex
    Boolean? no_match
    Boolean? b_gzip
    Int? threads
    Boolean? force
    Boolean? annotation
    Boolean? only_annotation
    Boolean? skip_sanitizing
    Boolean? ensembl_top_level
    Int? ensembl_version
    String? ucsc_annotation
    String? url_to_annotation
    String name
    String provider
  }
  command <<<
    genomepy install \
      ~{name} \
      ~{provider} \
      ~{if defined(genomes_dir) then ("--genomes_dir " +  '"' + genomes_dir + '"') else ""} \
      ~{if defined(local_name) then ("--localname " +  '"' + local_name + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""} \
      ~{true="--no-match" false="" no_match} \
      ~{true="--bgzip" false="" b_gzip} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{true="--annotation" false="" annotation} \
      ~{true="--only_annotation" false="" only_annotation} \
      ~{true="--skip_sanitizing" false="" skip_sanitizing} \
      ~{true="--ensembl-toplevel" false="" ensembl_top_level} \
      ~{if defined(ensembl_version) then ("--ensembl-version " +  '"' + ensembl_version + '"') else ""} \
      ~{if defined(ucsc_annotation) then ("--ucsc-annotation " +  '"' + ucsc_annotation + '"') else ""} \
      ~{if defined(url_to_annotation) then ("--url-to-annotation " +  '"' + url_to_annotation + '"') else ""}
  >>>
  parameter_meta {
    genomes_dir: "genomes directory"
    local_name: "custom name"
    mask: "DNA masking: hard/soft/none (default: soft)"
    regex: "regex to filter sequences"
    no_match: "select sequences that *don't* match regex"
    b_gzip: "bgzip genome"
    threads: "build index using multithreading"
    force: "overwrite existing files"
    annotation: "download annotation"
    only_annotation: "only download annotation (sets -a)"
    skip_sanitizing: "skip (check for) matching of contig names between annotation and fasta (sets -a)"
    ensembl_top_level: "always download toplevel-genome"
    ensembl_version: "select release version"
    ucsc_annotation: "specify annotation to download: UCSC, Ensembl, NCBI_refseq or UCSC_refseq"
    url_to_annotation: "link to the annotation file, required if this is not in the same directory as the fasta file"
    name: ""
    provider: ""
  }
}