version 1.0

task GenomepyInstall {
  input {
    String? provider
    Directory? genomes_dir
    String? local_name
    String? mask
    Boolean? keep_alt
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
    File? url_to_annotation
    String name
  }
  command <<<
    genomepy install \
      ~{name} \
      ~{if defined(provider) then ("--provider " +  '"' + provider + '"') else ""} \
      ~{if defined(genomes_dir) then ("--genomes_dir " +  '"' + genomes_dir + '"') else ""} \
      ~{if defined(local_name) then ("--localname " +  '"' + local_name + '"') else ""} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if (keep_alt) then "--keep-alt" else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""} \
      ~{if (no_match) then "--no-match" else ""} \
      ~{if (b_gzip) then "--bgzip" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (annotation) then "--annotation" else ""} \
      ~{if (only_annotation) then "--only_annotation" else ""} \
      ~{if (skip_sanitizing) then "--skip_sanitizing" else ""} \
      ~{if (ensembl_top_level) then "--ensembl-toplevel" else ""} \
      ~{if defined(ensembl_version) then ("--ensembl-version " +  '"' + ensembl_version + '"') else ""} \
      ~{if defined(ucsc_annotation) then ("--ucsc-annotation " +  '"' + ucsc_annotation + '"') else ""} \
      ~{if defined(url_to_annotation) then ("--url-to-annotation " +  '"' + url_to_annotation + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/genomepy:0.9.3--py_0"
  }
  parameter_meta {
    provider: "download from this provider"
    genomes_dir: "create output directory here"
    local_name: "custom name"
    mask: "DNA masking: hard/soft/none (default: soft)"
    keep_alt: "keep alternative regions"
    regex: "regex to filter sequences"
    no_match: "select sequences that *don't* match regex"
    b_gzip: "bgzip genome"
    threads: "build index using multithreading"
    force: "overwrite existing files"
    annotation: "download annotation"
    only_annotation: "only download annotation (sets -a)"
    skip_sanitizing: "skip (check for) matching of contig names\\nbetween annotation and fasta (sets -a)"
    ensembl_top_level: "always download toplevel-genome"
    ensembl_version: "select release version"
    ucsc_annotation: "specify annotation to download: UCSC, Ensembl,\\nNCBI_refseq or UCSC_refseq"
    url_to_annotation: "link to the annotation file, required if this\\nis not in the same directory as the fasta file"
    name: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_genomes_dir = "${in_genomes_dir}"
  }
}