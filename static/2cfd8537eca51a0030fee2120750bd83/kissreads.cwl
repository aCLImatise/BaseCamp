class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/kissreads.cwl
inputs:
- id: will_use_seeds
  doc: ': will use seeds of length size_seed. Default: 25.'
  type: long
  inputBinding:
    prefix: -k
- id: read_can_mapped
  doc: ': a read can be mapped if its overlap is a least "minimal_read_overlap". Default:
    k'
  type: long
  inputBinding:
    prefix: -O
- id: sequence_covered_at
  doc: ': a sequence is covered by at least min_coverage coherent reads. Default:
    2'
  type: long
  inputBinding:
    prefix: -c
- id: maximal_number_allowed
  doc: ': Maximal number of substitutions authorized between a read and a fragment.
    Note that no substitution is allowed on the central position while anaylizing
    the kissnp output. Default: 1.'
  type: long
  inputBinding:
    prefix: -d
- id: write_readcoherent_outputs
  doc: ': write read-coherent outputs. Default: standard output '
  type: File
  inputBinding:
    prefix: -o
- id: write_unreadcoherent_outputs
  doc: ': write unread-coherent outputs. Default: standard output '
  type: File
  inputBinding:
    prefix: -u
- id: input_file_tocheckfasta_kissnp
  doc: 'input file (toCheck.fasta) is a kissnp output (incompatible with -I option)  in
    this case: 1/ only the upper characters are considered (no mapping done on the
    extensions) and 2/ the central position (where the SNP occurs) is strictly mapped,
    no subsitution is authorized on this position.'
  type: string
  inputBinding:
    prefix: -n
- id: input_file_tocheckfasta_intl
  doc: 'input file (toCheck.fasta) is an Intl output (incompatible with -n option) '
  type: string
  inputBinding:
    prefix: -I
- id: int_value_heuristic
  doc: (int value). This is a heuristic for limiting the memory footprint. Instead
    of indexing each kmer of the sequences contained into the toCheck.fasta, kissreads
    indexes kmers occurring each "index_stride" position. Default = 1 (no heuristic)
  type: string
  inputBinding:
    prefix: -i
- id: number_also_limited
  doc: number of threads (also limited by number of input files)
  type: long
  inputBinding:
    prefix: -t
- id: write_file_reads
  doc: ', write a file of reads mapped to sequences in file align_file'
  type: string
  inputBinding:
    prefix: -m
- id: mode
  doc: mode
  type: string
  inputBinding:
    prefix: -s
- id: coherent_events_standard
  doc: coherent events in a standard fasta file format
  type: string
  inputBinding:
    prefix: -f
- id: this_message_exit
  doc: this message and exit
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- kissreads
