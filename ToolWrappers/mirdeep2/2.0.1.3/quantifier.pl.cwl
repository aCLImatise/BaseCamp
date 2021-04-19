class: CommandLineTool
id: quantifier.pl.cwl
inputs:
- id: in_list_values_allowed
  doc: list all values allowed for the species parameter that have an entry at UCSC
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_mirna_precursor_sequences
  doc: miRNA precursor sequences from miRBase
  type: string?
  inputBinding:
    prefix: -p
- id: in_mirna_sequences_mirbase
  doc: miRNA sequences from miRBase
  type: string?
  inputBinding:
    prefix: -m
- id: in_specify_option_contains
  doc: specify this option of your mature miRNA file contains 5p and 3p ids only
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_your_read_sequences
  doc: your read sequences
  type: string?
  inputBinding:
    prefix: -r
- id: in_configtxt_file_sample
  doc: '[file]    config.txt file with different sample ids... or just the one sample
    id  -- deprecated'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_optional_star_sequences
  doc: '[star.fa] optional star sequences from miRBase'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_eg_mouse_searching
  doc: "[species] e.g. Mouse or mmu\nif not searching in a specific species all species\
    \ in your files will be analyzed\nelse only the species in your dataset is considered"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_optional_otherwise_generating
  doc: '[time]    optional otherwise its generating a new one'
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_parameter_given_pdfs
  doc: if parameter given pdfs will not be generated, otherwise pdfs will be generated
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_parameter_given_reads
  doc: if parameter is given reads were not sorted by sample in pdf file, default
    is sorting
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_also_considers_mappings
  doc: "also considers precursor-mature mappings that have different ids, eg let7c\n\
    would be allowed to map to pre-let7a"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_do_file_conversion
  doc: do not do file conversion again
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_do_mapping_again
  doc: do not do mapping against precursor again
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_number_when_reads
  doc: '[int]     number of allowed mismatches when mapping reads to precursors, default
    1'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_number_consider_default
  doc: '[int]     number of nucleotides upstream of the mature sequence to consider,
    default 2'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_number_downstream_consider
  doc: '[int]     number of nucleotides downstream of the mature sequence to consider,
    default 5'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_create_outputmrd_file
  doc: do not create an output.mrd file and pdfs if specified
  type: File?
  inputBinding:
    prefix: -j
- id: in_read_counts_weighed
  doc: read counts are weighed by their number of mappings. e.g. A read maps twice
    so each position gets 0.5 added to its read profile
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_use_unique_mappings
  doc: 'use only unique read mappings; Caveat: Some miRNAs have multiple precursors.
    These will be underestimated in their expression since the multimappers are excluded'
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_more_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -OPTIONS
- id: in_timestamp
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_pdfs
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_sort
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_stringent
  doc: ''
  type: string?
  inputBinding:
    position: 3
- id: in_number
  doc: ''
  type: long?
  inputBinding:
    position: 4
- id: in_of
  doc: ''
  type: string?
  inputBinding:
    position: 5
- id: in_mismatches
  doc: ''
  type: string?
  inputBinding:
    position: 6
- id: in_in
  doc: ''
  type: string?
  inputBinding:
    position: 7
- id: in_reads
  doc: ''
  type: string?
  inputBinding:
    position: 8
- id: in_vs
  doc: ''
  type: string?
  inputBinding:
    position: 9
- id: in_precursor
  doc: ''
  type: string?
  inputBinding:
    position: 10
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_create_outputmrd_file
  doc: do not create an output.mrd file and pdfs if specified
  type: File?
  outputBinding:
    glob: $(inputs.in_create_outputmrd_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- quantifier.pl
