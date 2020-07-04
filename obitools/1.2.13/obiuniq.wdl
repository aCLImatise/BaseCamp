version 1.0

task Obiuniq {
  input {
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
      ~{if defined(merge) then ("--merge " +  '"' + merge + '"') else ""} \
      ~{true="--merge-ids" false="" merge_ids} \
      ~{if defined(category_attribute) then ("--category-attribute " +  '"' + category_attribute + '"') else ""} \
      ~{true="--prefix" false="" prefix} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(taxonomy_dump) then ("--taxonomy-dump " +  '"' + taxonomy_dump + '"') else ""} \
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
      ~{true="--prot" false="" prot}
  >>>
  parameter_meta {
    merge: "Attributes to merge"
    merge_ids: "Add the merged key with all ids of merged sequences"
    category_attribute: "Add one attribute to the list of attributes used to group sequences before dereplication (option can be used several times)"
    prefix: "Dereplication is done based on prefix matching: (i) The shortest sequence of each group is a prefix of any sequence of its group (ii) Two shortest sequences of any couple of groups are not theprefix of the other one"
    database: "ecoPCR taxonomy Database name"
    taxonomy_dump: "NCBI Taxonomy dump repository name"
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
  }
}