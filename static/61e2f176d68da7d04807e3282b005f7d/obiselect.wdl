version 1.0

task Obiselect {
  input {
    String? category_attribute
    String? number
    String? function
    Boolean? min
    Boolean? max
    Boolean? mean
    Boolean? median
    String? merge
    String? sample
    Boolean? merge_ids
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
    Boolean? fast_a_output
    Boolean? fast_q_output
    String? eco_pcr_db_output
    Boolean? uppercase
    File? database
    File? taxonomy_dump
  }
  command <<<
    obiselect \
      ~{if defined(category_attribute) then ("--category-attribute " +  '"' + category_attribute + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(function) then ("--function " +  '"' + function + '"') else ""} \
      ~{true="--min" false="" min} \
      ~{true="--max" false="" max} \
      ~{true="--mean" false="" mean} \
      ~{true="--median" false="" median} \
      ~{if defined(merge) then ("--merge " +  '"' + merge + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{true="--merge-ids" false="" merge_ids} \
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
      ~{true="--fasta-output" false="" fast_a_output} \
      ~{true="--fastq-output" false="" fast_q_output} \
      ~{if defined(eco_pcr_db_output) then ("--ecopcrdb-output " +  '"' + eco_pcr_db_output + '"') else ""} \
      ~{true="--uppercase" false="" uppercase} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(taxonomy_dump) then ("--taxonomy-dump " +  '"' + taxonomy_dump + '"') else ""}
  >>>
  parameter_meta {
    category_attribute: "Add one attribute to the list of attribute used for categorizing sequence records"
    number: "number of sequence records to keep in each category"
    function: "python code evaluated for each sequence record [default: random value]"
    min: "select sequence record in each group minimizing the function (exclusive with -M, -a, --median)"
    max: "select sequence record in each group maximizing the function (exclusive with -m, -a, --median)"
    mean: "select sequence record in each group closest to the mean of the function (exclusive with -m, -M, --median)"
    median: "select sequence record in each group closest to the median of the function (exclusive with -m, -M, -a)"
    merge: "attributes to merge within each group"
    sample: "Tag containing sample descriptions, the default value is set to *merged_sample*"
    merge_ids: "add the merged id data to output"
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
    fast_a_output: "Output sequences in obitools fasta format"
    fast_q_output: "Output sequences in sanger fastq format"
    eco_pcr_db_output: "Output sequences in ecopcr database format (sequence records are not printed on standard output)"
    uppercase: "Print sequences in upper case (default is lower case)"
    database: "ecoPCR taxonomy Database name"
    taxonomy_dump: "NCBI Taxonomy dump repository name"
  }
}