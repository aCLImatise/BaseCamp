version 1.0

task Ecotag {
  input {
    String? sort
    Boolean? debug
    Boolean? without_progress_bar
    File? ref_database
    String? minimum_identity
    String? minimum_circle
    String? explain
    Boolean? uniq
    Boolean? reverse
    String? errors
    Int? min_matches
    Int? cache_size
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
    Boolean? fast_a_output
    Boolean? fast_q_output
    String? eco_pcr_db_output
    Boolean? uppercase
    String bash
    String identification
  }
  command <<<
    ecotag \
      ~{bash} \
      ~{identification} \
      ~{if defined(sort) then ("--sort " +  '"' + sort + '"') else ""} \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if (without_progress_bar) then "--without-progress-bar" else ""} \
      ~{if defined(ref_database) then ("--ref-database " +  '"' + ref_database + '"') else ""} \
      ~{if defined(minimum_identity) then ("--minimum-identity " +  '"' + minimum_identity + '"') else ""} \
      ~{if defined(minimum_circle) then ("--minimum-circle " +  '"' + minimum_circle + '"') else ""} \
      ~{if defined(explain) then ("--explain " +  '"' + explain + '"') else ""} \
      ~{if (uniq) then "--uniq" else ""} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if defined(errors) then ("--errors " +  '"' + errors + '"') else ""} \
      ~{if defined(min_matches) then ("--min-matches " +  '"' + min_matches + '"') else ""} \
      ~{if defined(cache_size) then ("--cache-size " +  '"' + cache_size + '"') else ""} \
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
      ~{if (prot) then "--prot" else ""} \
      ~{if (fast_a_output) then "--fasta-output" else ""} \
      ~{if (fast_q_output) then "--fastq-output" else ""} \
      ~{if defined(eco_pcr_db_output) then ("--ecopcrdb-output " +  '"' + eco_pcr_db_output + '"') else ""} \
      ~{if (uppercase) then "--uppercase" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sort: "> seq_tag.fasta"
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    ref_database: "fasta file containing reference sequences"
    minimum_identity: "minimum identity to consider."
    minimum_circle: "minimum identity considered for the assignment circle."
    explain: "Add in the output CD (complementary data) record to\\nexplain identification decision"
    uniq: "Apply a uniq filter on query sequences before"
    reverse: "Sort in reverse order (should be used with -S)"
    errors: "Tolerated rate of wrong assignation"
    min_matches: "Minimum congruent assignation"
    cache_size: "Cache size for the aligment score"
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
    fast_a_output: "Output sequences in obitools fasta format"
    fast_q_output: "Output sequences in sanger fastq format"
    eco_pcr_db_output: "Output sequences in ecopcr database format (sequence\\nrecords are not printed on standard output)"
    uppercase: "Print sequences in upper case (default is lower case)"
    bash: "> ecotag -d embl_r113  -R ReferenceDB.fasta \\"
    identification: "--sort=SORT           Sort output on input sequence tag"
  }
  output {
    File out_stdout = stdout()
  }
}