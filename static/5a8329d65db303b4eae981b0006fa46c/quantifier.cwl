class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/quantifier.pl.cwl
inputs:
- id: list_values_allowed
  doc: list all values allowed for the species parameter that have an entry at UCSC
  type: boolean
  inputBinding:
    prefix: -u
- id: mirna_precursor_sequences
  doc: miRNA precursor sequences from miRBase
  type: string
  inputBinding:
    prefix: -p
- id: mirna_sequences_mirbase
  doc: miRNA sequences from miRBase
  type: string
  inputBinding:
    prefix: -m
- id: specify_option_mirna
  doc: specify this option of your mature miRNA file contains 5p and 3p ids only
  type: boolean
  inputBinding:
    prefix: -P
- id: your_read_sequences
  doc: your read sequences
  type: string
  inputBinding:
    prefix: -r
- id: configtxt_file_different
  doc: '[file]    config.txt file with different sample ids... or just the one sample
    id  -- deprecated'
  type: boolean
  inputBinding:
    prefix: -c
- id: optional_star_sequences
  doc: '[star.fa] optional star sequences from miRBase'
  type: boolean
  inputBinding:
    prefix: -s
- id: eg_mouse_searching
  doc: '[species] e.g. Mouse or mmu if not searching in a specific species all species
    in your files will be analyzed else only the species in your dataset is considered'
  type: boolean
  inputBinding:
    prefix: -t
- id: optional_otherwise_generating
  doc: '[time]    optional otherwise its generating a new one'
  type: boolean
  inputBinding:
    prefix: -y
- id: parameter_given_pdfs
  doc: if parameter given pdfs will not be generated, otherwise pdfs will be generated
  type: boolean
  inputBinding:
    prefix: -d
- id: parameter_given_reads
  doc: if parameter is given reads were not sorted by sample in pdf file, default
    is sorting
  type: boolean
  inputBinding:
    prefix: -o
- id: also_considers_mappings
  doc: also considers precursor-mature mappings that have different ids, eg let7c
    would be allowed to map to pre-let7a
  type: boolean
  inputBinding:
    prefix: -k
- id: file_conversion_again
  doc: do not do file conversion again
  type: boolean
  inputBinding:
    prefix: -n
- id: mapping_precursor_again
  doc: do not do mapping against precursor again
  type: boolean
  inputBinding:
    prefix: -x
- id: number_when_reads
  doc: '[int]     number of allowed mismatches when mapping reads to precursors, default
    1'
  type: boolean
  inputBinding:
    prefix: -g
- id: number_nucleotides_upstream
  doc: '[int]     number of nucleotides upstream of the mature sequence to consider,
    default 2'
  type: boolean
  inputBinding:
    prefix: -e
- id: number_nucleotides_downstream
  doc: '[int]     number of nucleotides downstream of the mature sequence to consider,
    default 5'
  type: boolean
  inputBinding:
    prefix: -f
- id: create_outputmrd_file
  doc: do not create an output.mrd file and pdfs if specified
  type: boolean
  inputBinding:
    prefix: -j
- id: considers_whole_precursor
  doc: considers the whole precursor as the 'mature sequence'
  type: boolean
  inputBinding:
    prefix: -w
- id: read_counts_weighed
  doc: read counts are weighed by their number of mappings. e.g. A read maps twice
    so each position gets 0.5 added to its read profile
  type: boolean
  inputBinding:
    prefix: -W
- id: use_mappings_caveat
  doc: 'use only unique read mappings; Caveat: Some miRNAs have multiple precursors.
    These will be underestimated in their expression since the multimappers are excluded'
  type: boolean
  inputBinding:
    prefix: -U
- id: timestamp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: pdfs
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sort
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: stringent
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: number
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: of
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: mismatches
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: reads
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: vs
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: precursor
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: mappings
  doc: ''
  type: string
  inputBinding:
    position: 11
outputs: []
cwlVersion: v1.1
baseCommand:
- quantifier.pl
