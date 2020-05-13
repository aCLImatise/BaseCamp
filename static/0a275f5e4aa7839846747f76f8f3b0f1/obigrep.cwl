class: CommandLineTool
id: obigrep.cwl
inputs:
- id: sequence
  doc: regular expression pattern used to select the sequence. The pattern is case
    insensitive
  type: string
  inputBinding:
    prefix: --sequence
- id: definition
  doc: regular expression pattern matched against the definition of the sequence.
    The pattern is case sensitive
  type: string
  inputBinding:
    prefix: --definition
- id: identifier
  doc: regular expression pattern matched against the identifier of the sequence.
    The pattern is case sensitive
  type: string
  inputBinding:
    prefix: --identifier
- id: id_list
  doc: file containing identifiers of sequences to select
  type: File
  inputBinding:
    prefix: --id-list
- id: a
  doc: ':<REGULAR_PATTERN>, --attribute=<ATTRIBUTE_NAME>:<REGULAR_PATTERN> regular
    expression pattern matched against the attributes of the sequence. the value of
    this atribute is of the form : attribute_name:regular_pattern. The pattern is
    case sensitive.Several -a option can be used on the same commande line.'
  type: string
  inputBinding:
    prefix: -a
- id: has_attribute
  doc: select sequence with attribute <ATTRIBUTE_NAME> defined
  type: string
  inputBinding:
    prefix: --has-attribute
- id: predic_at
  doc: python boolean expression to be evaluated in the sequence context. The attribute
    name can be used in the expression as variable name .An extra variable named 'sequence'
    refersto the sequence object itself. Several -p option can be used on the same
    commande line.
  type: string
  inputBinding:
    prefix: --predicat
- id: l
  doc: <##>, --lmax=<##> keep sequences shorter than lmax
  type: boolean
  inputBinding:
    prefix: -L
- id: l
  doc: <##>, --lmin=<##> keep sequences longer than lmin
  type: boolean
  inputBinding:
    prefix: -l
- id: inverse_match
  doc: 'revert the sequence selection [default : False]'
  type: boolean
  inputBinding:
    prefix: --inverse-match
- id: database
  doc: ecoPCR taxonomy Database name
  type: File
  inputBinding:
    prefix: --database
- id: taxonomy_dump
  doc: NCBI Taxonomy dump repository name
  type: File
  inputBinding:
    prefix: --taxonomy-dump
- id: require_rank
  doc: select sequence with taxid tag containing a parent of rank <RANK_NAME>
  type: string
  inputBinding:
    prefix: --require-rank
- id: required
  doc: Select the sequences having the ancestor of taxid <TAXID>. If several ancestors
    are specified (with  '-r taxid1 -r taxid2'), the sequences having at least one
    of them are selected
  type: string
  inputBinding:
    prefix: --required
- id: ignore
  doc: ignored taxid
  type: string
  inputBinding:
    prefix: --ignore
- id: skip
  doc: skip the N first sequences
  type: string
  inputBinding:
    prefix: --skip
- id: only
  doc: treat only N sequences
  type: string
  inputBinding:
    prefix: --only
- id: genbank
  doc: Input file is in genbank format
  type: boolean
  inputBinding:
    prefix: --genbank
- id: embl
  doc: Input file is in embl format
  type: boolean
  inputBinding:
    prefix: --embl
- id: skip_on_error
  doc: Skip sequence entries with parse error
  type: boolean
  inputBinding:
    prefix: --skip-on-error
- id: fast_a
  doc: Input file is in fasta nucleic format (including obitools fasta extentions)
  type: boolean
  inputBinding:
    prefix: --fasta
- id: eco_pcr
  doc: Input file is in ecopcr format
  type: boolean
  inputBinding:
    prefix: --ecopcr
- id: raw_fast_a
  doc: Input file is in fasta format (but more tolerant to format variant)
  type: boolean
  inputBinding:
    prefix: --raw-fasta
- id: sanger
  doc: Input file is in sanger fastq nucleic format (standard fastq)
  type: boolean
  inputBinding:
    prefix: --sanger
- id: solexa
  doc: Input file is in fastq nucleic format produced by solexa sequencer
  type: boolean
  inputBinding:
    prefix: --solexa
- id: eco_pcr_db
  doc: Input file is an ecopcr database
  type: boolean
  inputBinding:
    prefix: --ecopcrdb
- id: nuc
  doc: Input file contains nucleic sequences
  type: boolean
  inputBinding:
    prefix: --nuc
- id: prot
  doc: Input file contains protein sequences
  type: boolean
  inputBinding:
    prefix: --prot
- id: fast_a_output
  doc: Output sequences in obitools fasta format
  type: boolean
  inputBinding:
    prefix: --fasta-output
- id: fast_q_output
  doc: Output sequences in sanger fastq format
  type: boolean
  inputBinding:
    prefix: --fastq-output
- id: eco_pcr_db_output
  doc: Output sequences in ecopcr database format (sequence records are not printed
    on standard output)
  type: string
  inputBinding:
    prefix: --ecopcrdb-output
- id: uppercase
  doc: Print sequences in upper case (default is lower case)
  type: boolean
  inputBinding:
    prefix: --uppercase
outputs: []
cwlVersion: v1.1
baseCommand:
- obigrep
