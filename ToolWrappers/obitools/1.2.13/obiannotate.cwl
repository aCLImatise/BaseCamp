class: CommandLineTool
id: obiannotate.cwl
inputs:
- id: in_with_tax_on_at_rank
  doc: seq1.fasta > seq2.fasta
  type: long?
  inputBinding:
    prefix: --with-taxon-at-rank
- id: in_debug
  doc: Set logging in debug mode
  type: boolean?
  inputBinding:
    prefix: --DEBUG
- id: in_without_progress_bar
  doc: desactivate progress bar
  type: boolean?
  inputBinding:
    prefix: --without-progress-bar
- id: in_sequence
  doc: "regular expression pattern used to select the\nsequence. The pattern is case\
    \ insensitive"
  type: string?
  inputBinding:
    prefix: --sequence
- id: in_definition
  doc: "regular expression pattern matched against the\ndefinition of the sequence.\
    \ The pattern is case\nsensitive"
  type: string?
  inputBinding:
    prefix: --definition
- id: in_identifier
  doc: "regular expression pattern matched against the\nidentifier of the sequence.\
    \ The pattern is case\nsensitive"
  type: string?
  inputBinding:
    prefix: --identifier
- id: in_id_list
  doc: file containing identifiers of sequences to select
  type: File?
  inputBinding:
    prefix: --id-list
- id: in_regularpattern__attributeattributenameregularpatternregular
  doc: ":<REGULAR_PATTERN>, --attribute=<ATTRIBUTE_NAME>:<REGULAR_PATTERN>\nregular\
    \ expression pattern matched against the\nattributes of the sequence. the value\
    \ of this atribute\nis of the form : attribute_name:regular_pattern. The\npattern\
    \ is case sensitive.Several -a option can be\nused on the same commande line."
  type: string?
  inputBinding:
    prefix: -a
- id: in_has_attribute
  doc: "select sequence with attribute <ATTRIBUTE_NAME>\ndefined"
  type: string?
  inputBinding:
    prefix: --has-attribute
- id: in_predic_at
  doc: "python boolean expression to be evaluated in the\nsequence context. The attribute\
    \ name can be used in\nthe expression as variable name .An extra variable\nnamed\
    \ 'sequence' refersto the sequence object itself.\nSeveral -p option can be used\
    \ on the same commande\nline."
  type: boolean?
  inputBinding:
    prefix: --predicat
- id: in__lmaxkeep_sequences
  doc: "<##>, --lmax=<##>\nkeep sequences shorter than lmax"
  type: boolean?
  inputBinding:
    prefix: -L
- id: in__lminkeep_sequences
  doc: "<##>, --lmin=<##>\nkeep sequences longer than lmin"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_inverse_match
  doc: 'revert the sequence selection [default : False]'
  type: boolean?
  inputBinding:
    prefix: --inverse-match
- id: in_database
  doc: ecoPCR taxonomy Database name
  type: File?
  inputBinding:
    prefix: --database
- id: in_taxonomy_dump
  doc: NCBI Taxonomy dump repository name
  type: File?
  inputBinding:
    prefix: --taxonomy-dump
- id: in_require_rank
  doc: "select sequence with taxid tag containing a parent of\nrank <RANK_NAME>"
  type: string?
  inputBinding:
    prefix: --require-rank
- id: in_required
  doc: "Select the sequences having the ancestor of taxid\n<TAXID>. If several ancestors\
    \ are specified (with  '-r\ntaxid1 -r taxid2'), the sequences having at least\
    \ one\nof them are selected"
  type: long?
  inputBinding:
    prefix: --required
- id: in_ignore
  doc: ignored taxid
  type: string?
  inputBinding:
    prefix: --ignore
- id: in_seq_rank
  doc: "add a rank attribute to the sequence indicating the\nsequence position in\
    \ the input data"
  type: boolean?
  inputBinding:
    prefix: --seq-rank
- id: in_oldnamenewname__renametagoldnamenewnamechange
  doc: "<OLD_NAME:NEW_NAME>, --rename-tag=<OLD_NAME:NEW_NAME>\nchange tag name from\
    \ OLD_NAME to NEW_NAME"
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_delete_tag
  doc: delete tag TAG_NAME
  type: string?
  inputBinding:
    prefix: --delete-tag
- id: in_tagnamepythonexpression_settagtagnamepythonexpressionadd_tag
  doc: "<TAG_NAME:PYTHON_EXPRESSION>, --set-tag=<TAG_NAME:PYTHON_EXPRESSION>\nAdd\
    \ a new tag named TAG_NAME with a value computed\nfrom PYTHON_EXPRESSION"
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_tag_list
  doc: "Indicate a file containing tag and values to modify on\nspecified sequences"
  type: File?
  inputBinding:
    prefix: --tag-list
- id: in_set_identifier
  doc: "Set sequence identifier with a value computed from\nPYTHON_EXPRESSION"
  type: string?
  inputBinding:
    prefix: --set-identifier
- id: in_run
  doc: Run a python expression on each selected sequence
  type: string?
  inputBinding:
    prefix: --run
- id: in_set_sequence
  doc: "Change the sequence itself with a value computed from\nPYTHON_EXPRESSION"
  type: string?
  inputBinding:
    prefix: --set-sequence
- id: in_set_definition
  doc: "Set sequence definition with a value computed from\nPYTHON_EXPRESSION"
  type: string?
  inputBinding:
    prefix: --set-definition
- id: in_only_valid_python
  doc: only valid python expressions are allowed
  type: boolean?
  inputBinding:
    prefix: --only-valid-python
- id: in_clear
  doc: clear all tags associated to the sequences
  type: boolean?
  inputBinding:
    prefix: --clear
- id: in_keep
  doc: only keep this tag
  type: string?
  inputBinding:
    prefix: --keep
- id: in_length
  doc: add seqLength tag with sequence length
  type: boolean?
  inputBinding:
    prefix: --length
- id: in_mcl
  doc: "add cluster tag to sequences according to a mcl graph\nclustering partition"
  type: File?
  inputBinding:
    prefix: --mcl
- id: in_uniq_id
  doc: force sequence ids to be uniq
  type: boolean?
  inputBinding:
    prefix: --uniq-id
- id: in_skip
  doc: skip the N first sequences
  type: string?
  inputBinding:
    prefix: --skip
- id: in_only
  doc: treat only N sequences
  type: string?
  inputBinding:
    prefix: --only
- id: in_genbank
  doc: Input file is in genbank format
  type: boolean?
  inputBinding:
    prefix: --genbank
- id: in_embl
  doc: Input file is in embl format
  type: boolean?
  inputBinding:
    prefix: --embl
- id: in_skip_on_error
  doc: Skip sequence entries with parse error
  type: boolean?
  inputBinding:
    prefix: --skip-on-error
- id: in_fast_a
  doc: "Input file is in fasta nucleic format (including\nobitools fasta extentions)"
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_eco_pcr
  doc: Input file is in ecopcr format
  type: boolean?
  inputBinding:
    prefix: --ecopcr
- id: in_raw_fast_a
  doc: "Input file is in fasta format (but more tolerant to\nformat variant)"
  type: boolean?
  inputBinding:
    prefix: --raw-fasta
- id: in_sanger
  doc: "Input file is in sanger fastq nucleic format (standard\nfastq)"
  type: boolean?
  inputBinding:
    prefix: --sanger
- id: in_solexa
  doc: "Input file is in fastq nucleic format produced by\nsolexa sequencer"
  type: boolean?
  inputBinding:
    prefix: --solexa
- id: in_eco_pcr_db
  doc: Input file is an ecopcr database
  type: boolean?
  inputBinding:
    prefix: --ecopcrdb
- id: in_nuc
  doc: Input file contains nucleic sequences
  type: boolean?
  inputBinding:
    prefix: --nuc
- id: in_prot
  doc: Input file contains protein sequences
  type: boolean?
  inputBinding:
    prefix: --prot
- id: in_fast_a_output
  doc: Output sequences in obitools fasta format
  type: boolean?
  inputBinding:
    prefix: --fasta-output
- id: in_fast_q_output
  doc: Output sequences in sanger fastq format
  type: boolean?
  inputBinding:
    prefix: --fastq-output
- id: in_eco_pcr_db_output
  doc: "Output sequences in ecopcr database format (sequence\nrecords are not printed\
    \ on standard output)"
  type: string?
  inputBinding:
    prefix: --ecopcrdb-output
- id: in_uppercase
  doc: Print sequences in upper case (default is lower case)
  type: boolean?
  inputBinding:
    prefix: --uppercase
- id: in_bash
  doc: '> obiannotate -d my_ecopcr_database \'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- obiannotate
