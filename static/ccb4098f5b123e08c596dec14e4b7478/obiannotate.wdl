version 1.0

task Obiannotate {
  input {
    String? with_tax_on_at_rank
    String? sequence
    String? definition
    String? identifier
    File? id_list
    String? regularpattern__attributeattributenameregularpattern
    String? has_attribute
    String? predic_at
    Boolean? _lmax_keep
    Boolean? _lmin_keep
    Boolean? inverse_match
    File? database
    File? taxonomy_dump
    String? require_rank
    String? required
    String? ignore
    Boolean? seq_rank
    Boolean? oldnamenewname__renametagoldnamenewname
    String? delete_tag
    Boolean? tagnamepythonexpression__settagtagnamepythonexpression
    File? tag_list
    String? set_identifier
    String? run
    String? set_sequence
    String? set_definition
    Boolean? only_valid_python
    Boolean? clear
    String? keep
    Boolean? length
    String? mcl
    Boolean? uniq_id
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
    obiannotate \
      ~{if defined(with_tax_on_at_rank) then ("--with-taxon-at-rank " +  '"' + with_tax_on_at_rank + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(definition) then ("--definition " +  '"' + definition + '"') else ""} \
      ~{if defined(identifier) then ("--identifier " +  '"' + identifier + '"') else ""} \
      ~{if defined(id_list) then ("--id-list " +  '"' + id_list + '"') else ""} \
      ~{if defined(regularpattern__attributeattributenameregularpattern) then ("-a " +  '"' + regularpattern__attributeattributenameregularpattern + '"') else ""} \
      ~{if defined(has_attribute) then ("--has-attribute " +  '"' + has_attribute + '"') else ""} \
      ~{if defined(predic_at) then ("--predicat " +  '"' + predic_at + '"') else ""} \
      ~{true="-L" false="" _lmax_keep} \
      ~{true="-l" false="" _lmin_keep} \
      ~{true="--inverse-match" false="" inverse_match} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(taxonomy_dump) then ("--taxonomy-dump " +  '"' + taxonomy_dump + '"') else ""} \
      ~{if defined(require_rank) then ("--require-rank " +  '"' + require_rank + '"') else ""} \
      ~{if defined(required) then ("--required " +  '"' + required + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{true="--seq-rank" false="" seq_rank} \
      ~{true="-R" false="" oldnamenewname__renametagoldnamenewname} \
      ~{if defined(delete_tag) then ("--delete-tag " +  '"' + delete_tag + '"') else ""} \
      ~{true="-S" false="" tagnamepythonexpression__settagtagnamepythonexpression} \
      ~{if defined(tag_list) then ("--tag-list " +  '"' + tag_list + '"') else ""} \
      ~{if defined(set_identifier) then ("--set-identifier " +  '"' + set_identifier + '"') else ""} \
      ~{if defined(run) then ("--run " +  '"' + run + '"') else ""} \
      ~{if defined(set_sequence) then ("--set-sequence " +  '"' + set_sequence + '"') else ""} \
      ~{if defined(set_definition) then ("--set-definition " +  '"' + set_definition + '"') else ""} \
      ~{true="--only-valid-python" false="" only_valid_python} \
      ~{true="--clear" false="" clear} \
      ~{if defined(keep) then ("--keep " +  '"' + keep + '"') else ""} \
      ~{true="--length" false="" length} \
      ~{if defined(mcl) then ("--mcl " +  '"' + mcl + '"') else ""} \
      ~{true="--uniq-id" false="" uniq_id} \
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
      ~{true="--uppercase" false="" uppercase}
  >>>
  parameter_meta {
    with_tax_on_at_rank: "seq1.fasta > seq2.fasta"
    sequence: "regular expression pattern used to select the sequence. The pattern is case insensitive"
    definition: "regular expression pattern matched against the definition of the sequence. The pattern is case sensitive"
    identifier: "regular expression pattern matched against the identifier of the sequence. The pattern is case sensitive"
    id_list: "file containing identifiers of sequences to select"
    regularpattern__attributeattributenameregularpattern: ":<REGULAR_PATTERN>, --attribute=<ATTRIBUTE_NAME>:<REGULAR_PATTERN> regular expression pattern matched against the attributes of the sequence. the value of this atribute is of the form : attribute_name:regular_pattern. The pattern is case sensitive.Several -a option can be used on the same commande line."
    has_attribute: "select sequence with attribute <ATTRIBUTE_NAME> defined"
    predic_at: "python boolean expression to be evaluated in the sequence context. The attribute name can be used in the expression as variable name .An extra variable named 'sequence' refersto the sequence object itself. Several -p option can be used on the same commande line."
    _lmax_keep: "<##>, --lmax=<##> keep sequences shorter than lmax"
    _lmin_keep: "<##>, --lmin=<##> keep sequences longer than lmin"
    inverse_match: "revert the sequence selection [default : False]"
    database: "ecoPCR taxonomy Database name"
    taxonomy_dump: "NCBI Taxonomy dump repository name"
    require_rank: "select sequence with taxid tag containing a parent of rank <RANK_NAME>"
    required: "Select the sequences having the ancestor of taxid <TAXID>. If several ancestors are specified (with  '-r taxid1 -r taxid2'), the sequences having at least one of them are selected"
    ignore: "ignored taxid"
    seq_rank: "add a rank attribute to the sequence indicating the sequence position in the input data"
    oldnamenewname__renametagoldnamenewname: "<OLD_NAME:NEW_NAME>, --rename-tag=<OLD_NAME:NEW_NAME> change tag name from OLD_NAME to NEW_NAME"
    delete_tag: "delete tag TAG_NAME"
    tagnamepythonexpression__settagtagnamepythonexpression: "<TAG_NAME:PYTHON_EXPRESSION>, --set-tag=<TAG_NAME:PYTHON_EXPRESSION> Add a new tag named TAG_NAME with a value computed from PYTHON_EXPRESSION"
    tag_list: "Indicate a file containing tag and values to modify on specified sequences"
    set_identifier: "Set sequence identifier with a value computed from PYTHON_EXPRESSION"
    run: "Run a python expression on each selected sequence"
    set_sequence: "Change the sequence itself with a value computed from PYTHON_EXPRESSION"
    set_definition: "Set sequence definition with a value computed from PYTHON_EXPRESSION"
    only_valid_python: "only valid python expressions are allowed"
    clear: "clear all tags associated to the sequences"
    keep: "only keep this tag"
    length: "add seqLength tag with sequence length"
    mcl: "add cluster tag to sequences according to a mcl graph clustering partition"
    uniq_id: "force sequence ids to be uniq"
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
  }
}