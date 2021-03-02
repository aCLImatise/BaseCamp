version 1.0

task Obiuniq {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    String? merge
    Boolean? merge_ids
    String? category_attribute
    Boolean? prefix
    File? database
    File? taxonomy_dump
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
  }
  command <<<
    obiuniq \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if (without_progress_bar) then "--without-progress-bar" else ""} \
      ~{if defined(merge) then ("--merge " +  '"' + merge + '"') else ""} \
      ~{if (merge_ids) then "--merge-ids" else ""} \
      ~{if defined(category_attribute) then ("--category-attribute " +  '"' + category_attribute + '"') else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(taxonomy_dump) then ("--taxonomy-dump " +  '"' + taxonomy_dump + '"') else ""} \
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
      ~{if (prot) then "--prot" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    merge: "Attributes to merge"
    merge_ids: "Add the merged key with all ids of merged sequences"
    category_attribute: "Add one attribute to the list of attributes used to\\ngroup sequences before dereplication (option can be\\nused several times)"
    prefix: "Dereplication is done based on prefix matching: (i)\\nThe shortest sequence of each group is a prefix of any\\nsequence of its group (ii) Two shortest sequences of\\nany couple of groups are not theprefix of the other\\none"
    database: "ecoPCR taxonomy Database name"
    taxonomy_dump: "NCBI Taxonomy dump repository name"
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
  }
  output {
    File out_stdout = stdout()
  }
}