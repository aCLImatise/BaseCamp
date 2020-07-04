version 1.0

task Obistat {
  input {
    String? category_attribute
    String? min
    String? max
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
      ~{if defined(category_attribute) then ("--category-attribute " +  '"' + category_attribute + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(mean) then ("--mean " +  '"' + mean + '"') else ""} \
      ~{if defined(variance) then ("--variance " +  '"' + variance + '"') else ""} \
      ~{if defined(std_dev) then ("--std-dev " +  '"' + std_dev + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(only) then ("--only " +  '"' + only + '"') else ""} \
      ~{true="--genbank" false="" genbank} \
      ~{true="--embl" false="" embl} \
      ~{true="--skip-on-error" false="" skip_on_error} \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--ecopcr" false="" eco_pcr} \
      ~{true="--raw-fasta" false="" raw_fast_a} \
      ~{true="--sanger" false="" sanger} \
      ~{true="--solexa" false="" solexa} \
      ~{true="--ecopcrdb" false="" eco_pcr_db} \
      ~{true="--nuc" false="" nuc} \
      ~{true="--prot" false="" prot} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(taxonomy_dump) then ("--taxonomy-dump " +  '"' + taxonomy_dump + '"') else ""}
  >>>
  parameter_meta {
    category_attribute: "Attribute used to categorize the sequence records."
    min: "Computes the minimum value of attribute for each category."
    max: "Computes the maximum value of attribute for each category."
    mean: "Computes the mean value of attribute for each category."
    variance: "Computes the variance of attribute for each category."
    std_dev: "Computes the standard deviation of attribute for each category."
    skip: "skip the N first sequences"
    only: "treat only N sequences"
    genbank: "Input file is in genbank format"
    embl: "Input file is in embl format"
    skip_on_error: "Skip sequence entries with parse error"
    fast_a: "Input file is in fasta nucleic format (including obitools fasta extentions)"
    eco_pcr: "Input file is in ecopcr format"
    raw_fast_a: "Input file is in fasta format (but more tolerant to format variant)"
    sanger: "Input file is in sanger fastq nucleic format (standard fastq)"
    solexa: "Input file is in fastq nucleic format produced by solexa sequencer"
    eco_pcr_db: "Input file is an ecopcr database"
    nuc: "Input file contains nucleic sequences"
    prot: "Input file contains protein sequences"
    database: "ecoPCR taxonomy Database name"
    taxonomy_dump: "NCBI Taxonomy dump repository name"
  }
}