version 1.0

task Obistat {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    String? category_attribute
    Int? min
    Int? max
    String? mean
    String? variance
    String? std_dev
    String? skip
    String? only
    Boolean? genbank
    Boolean? embl
    Boolean? skip_on_error
    Boolean? fast_a
    Boolean? eco_pcr
    Boolean? raw_fast_a
    Boolean? sanger
    Boolean? solexa
    Boolean? eco_pcr_db
    Boolean? nuc
    Boolean? prot
    File? database
    File? taxonomy_dump
  }
  command <<<
    obistat \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if (without_progress_bar) then "--without-progress-bar" else ""} \
      ~{if defined(category_attribute) then ("--category-attribute " +  '"' + category_attribute + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(mean) then ("--mean " +  '"' + mean + '"') else ""} \
      ~{if defined(variance) then ("--variance " +  '"' + variance + '"') else ""} \
      ~{if defined(std_dev) then ("--std-dev " +  '"' + std_dev + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(only) then ("--only " +  '"' + only + '"') else ""} \
      ~{if (genbank) then "--genbank" else ""} \
      ~{if (embl) then "--embl" else ""} \
      ~{if (skip_on_error) then "--skip-on-error" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (eco_pcr) then "--ecopcr" else ""} \
      ~{if (raw_fast_a) then "--raw-fasta" else ""} \
      ~{if (sanger) then "--sanger" else ""} \
      ~{if (solexa) then "--solexa" else ""} \
      ~{if (eco_pcr_db) then "--ecopcrdb" else ""} \
      ~{if (nuc) then "--nuc" else ""} \
      ~{if (prot) then "--prot" else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(taxonomy_dump) then ("--taxonomy-dump " +  '"' + taxonomy_dump + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    category_attribute: "Attribute used to categorize the sequence records."
    min: "Computes the minimum value of attribute for each\\ncategory."
    max: "Computes the maximum value of attribute for each\\ncategory."
    mean: "Computes the mean value of attribute for each\\ncategory."
    variance: "Computes the variance of attribute for each category."
    std_dev: "Computes the standard deviation of attribute for each\\ncategory."
    skip: "skip the N first sequences"
    only: "treat only N sequences"
    genbank: "Input file is in genbank format"
    embl: "Input file is in embl format"
    skip_on_error: "Skip sequence entries with parse error"
    fast_a: "Input file is in fasta nucleic format (including\\nobitools fasta extentions)"
    eco_pcr: "Input file is in ecopcr format"
    raw_fast_a: "Input file is in fasta format (but more tolerant to\\nformat variant)"
    sanger: "Input file is in sanger fastq nucleic format (standard\\nfastq)"
    solexa: "Input file is in fastq nucleic format produced by\\nsolexa sequencer"
    eco_pcr_db: "Input file is an ecopcr database"
    nuc: "Input file contains nucleic sequences"
    prot: "Input file contains protein sequences"
    database: "ecoPCR taxonomy Database name"
    taxonomy_dump: "NCBI Taxonomy dump repository name\\n"
  }
  output {
    File out_stdout = stdout()
  }
}