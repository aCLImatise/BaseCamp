version 1.0

task Obicomplement {
  input {
    Boolean? debug
    Boolean? without_progress_bar
    String? sequence
    String? definition
    String? identifier
    File? id_list
    String? regularpattern__attributeattributenameregularpatternregular
    String? has_attribute
    Boolean? predic_at
    Boolean? _lmaxkeep_sequences
    Boolean? _lminkeep_sequences
    Boolean? inverse_match
    File? database
    File? taxonomy_dump
    String? require_rank
    Int? required
    String? ignore
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
  }
  command <<<
    obicomplement \
      ~{if (debug) then "--DEBUG" else ""} \
      ~{if (without_progress_bar) then "--without-progress-bar" else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(definition) then ("--definition " +  '"' + definition + '"') else ""} \
      ~{if defined(identifier) then ("--identifier " +  '"' + identifier + '"') else ""} \
      ~{if defined(id_list) then ("--id-list " +  '"' + id_list + '"') else ""} \
      ~{if defined(regularpattern__attributeattributenameregularpatternregular) then ("-a " +  '"' + regularpattern__attributeattributenameregularpatternregular + '"') else ""} \
      ~{if defined(has_attribute) then ("--has-attribute " +  '"' + has_attribute + '"') else ""} \
      ~{if defined(predic_at) then ("--predicat " +  '"' + predic_at + '"') else ""} \
      ~{if (_lmaxkeep_sequences) then "-L" else ""} \
      ~{if (_lminkeep_sequences) then "-l" else ""} \
      ~{if (inverse_match) then "--inverse-match" else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(taxonomy_dump) then ("--taxonomy-dump " +  '"' + taxonomy_dump + '"') else ""} \
      ~{if defined(require_rank) then ("--require-rank " +  '"' + require_rank + '"') else ""} \
      ~{if defined(required) then ("--required " +  '"' + required + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
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
    debug: "Set logging in debug mode"
    without_progress_bar: "desactivate progress bar"
    sequence: "regular expression pattern used to select the\\nsequence. The pattern is case insensitive"
    definition: "regular expression pattern matched against the\\ndefinition of the sequence. The pattern is case\\nsensitive"
    identifier: "regular expression pattern matched against the\\nidentifier of the sequence. The pattern is case\\nsensitive"
    id_list: "file containing identifiers of sequences to select"
    regularpattern__attributeattributenameregularpatternregular: ":<REGULAR_PATTERN>, --attribute=<ATTRIBUTE_NAME>:<REGULAR_PATTERN>\\nregular expression pattern matched against the\\nattributes of the sequence. the value of this atribute\\nis of the form : attribute_name:regular_pattern. The\\npattern is case sensitive.Several -a option can be\\nused on the same commande line."
    has_attribute: "select sequence with attribute <ATTRIBUTE_NAME>\\ndefined"
    predic_at: "python boolean expression to be evaluated in the\\nsequence context. The attribute name can be used in\\nthe expression as variable name .An extra variable\\nnamed 'sequence' refersto the sequence object itself.\\nSeveral -p option can be used on the same commande\\nline."
    _lmaxkeep_sequences: "<##>, --lmax=<##>\\nkeep sequences shorter than lmax"
    _lminkeep_sequences: "<##>, --lmin=<##>\\nkeep sequences longer than lmin"
    inverse_match: "revert the sequence selection [default : False]"
    database: "ecoPCR taxonomy Database name"
    taxonomy_dump: "NCBI Taxonomy dump repository name"
    require_rank: "select sequence with taxid tag containing a parent of\\nrank <RANK_NAME>"
    required: "Select the sequences having the ancestor of taxid\\n<TAXID>. If several ancestors are specified (with  '-r\\ntaxid1 -r taxid2'), the sequences having at least one\\nof them are selected"
    ignore: "ignored taxid"
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
  }
  output {
    File out_stdout = stdout()
  }
}