class: CommandLineTool
id: ../../../sequence.cwl
inputs:
- id: in_size
  doc: base size to use for N50 statistics
  type: boolean
  inputBinding:
    prefix: -size
- id: in_one_x
  doc: limit NG table to 1x coverage
  type: boolean
  inputBinding:
    prefix: -1x
- id: in_split_n
  doc: split sequences at N bases before computing length
  type: boolean
  inputBinding:
    prefix: -split-n
- id: in_simple
  doc: output a simple 'length numSequences' histogram
  type: boolean
  inputBinding:
    prefix: -simple
- id: in_lengths
  doc: output a list of the sequence lengths
  type: boolean
  inputBinding:
    prefix: -lengths
- id: in_as_sequences
  doc: load data as complete sequences (for testing)
  type: boolean
  inputBinding:
    prefix: -assequences
- id: in_as_bases
  doc: load data as blocks of bases    (for testing)
  type: boolean
  inputBinding:
    prefix: -asbases
- id: in_bases
  doc: baselist extract bases as specified in the 'list' from each sequence
  type: boolean
  inputBinding:
    prefix: -bases
- id: in_sequences
  doc: extract ordinal sequences as specified in the 'list'
  type: string
  inputBinding:
    prefix: -sequences
- id: in_reverse
  doc: reverse the bases in the sequence
  type: boolean
  inputBinding:
    prefix: -reverse
- id: in_complement
  doc: complement the bases in the sequence
  type: boolean
  inputBinding:
    prefix: -complement
- id: in_rc
  doc: alias for -reverse -complement
  type: boolean
  inputBinding:
    prefix: -rc
- id: in_compress
  doc: compress homopolymer runs to one base
  type: boolean
  inputBinding:
    prefix: -compress
- id: in_up_case
  doc: ''
  type: boolean
  inputBinding:
    prefix: -upcase
- id: in_down_case
  doc: ''
  type: boolean
  inputBinding:
    prefix: -downcase
- id: in_length
  doc: "print sequence if it is at least 'min' bases and at most 'max' bases long\n\
    a 'baselist' is a set of integers formed from any combination\nof the following,\
    \ seperated by a comma:\nnum       a single number\nbgn-end   a range of numbers:\
    \  bgn <= end\nbases are spaced-based; -bases 0-2,4 will print the bases between\n\
    the first two spaces (the first two bases) and the base after the\nfourth space\
    \ (the fifth base).\na 'seqlist' is a set of integers formed from any combination\n\
    of the following, seperated by a comma:\nnum       a single number\nbgn-end  \
    \ a range of numbers:  bgn <= end\nsequences are 1-based; -sequences 1,3-5 will\
    \ print the first, third,\nfourth and fifth sequences."
  type: long
  inputBinding:
    prefix: -length
- id: in_genome
  doc: sample reads from these sequences
  type: string
  inputBinding:
    prefix: -genome
- id: in_circular
  doc: treat the sequences in G as circular
  type: boolean
  inputBinding:
    prefix: -circular
- id: in_genome_size
  doc: genome size to use for deciding coverage below
  type: long
  inputBinding:
    prefix: -genomesize
- id: in_coverage
  doc: generate approximately c coverage of output
  type: string
  inputBinding:
    prefix: -coverage
- id: in_n_reads
  doc: generate exactly n reads of output
  type: string
  inputBinding:
    prefix: -nreads
- id: in_n_bases
  doc: generate approximately n bases of output
  type: string
  inputBinding:
    prefix: -nbases
- id: in_distribution
  doc: "generate read length by sampling the distribution in file F\none column  -\
    \ each line is the length of a sequence\ntwo columns - each line has the 'length'\
    \ and 'number of sequences'\nif file F doesn't exist, use a built-in distribution\n\
    ultra-long-nanopore\npacbio\npacbio-hifi"
  type: long
  inputBinding:
    prefix: -distribution
- id: in_output
  doc: (not implemented)
  type: string
  inputBinding:
    prefix: -output
- id: in_paired
  doc: "treat inputs as paired sequences; the first two files form the\nfirst pair,\
    \ and so on."
  type: boolean
  inputBinding:
    prefix: -paired
- id: in_copies
  doc: write C different copies of the sampling (without replacement).
  type: string
  inputBinding:
    prefix: -copies
- id: in_reads
  doc: output R reads.
  type: string
  inputBinding:
    prefix: -reads
- id: in_pairs
  doc: output P pairs (only if -paired).
  type: string
  inputBinding:
    prefix: -pairs
- id: in_fraction
  doc: output fraction F of the input bases.
  type: string
  inputBinding:
    prefix: -fraction
- id: in_min
  doc: minimum sequence length
  type: long
  inputBinding:
    prefix: -min
- id: in_max
  doc: maximum sequence length
  type: long
  inputBinding:
    prefix: -max
- id: in_gaussian
  doc: 99.73% of the reads (3 standard deviations) will be between min and max
  type: boolean
  inputBinding:
    prefix: -gaussian
- id: in_mirror
  doc: ''
  type: string
  inputBinding:
    prefix: -mirror
- id: in_gc
  doc: sets GC/AT composition (default 0.50)
  type: double
  inputBinding:
    prefix: -gc
- id: in_at
  doc: sets GC/AT composition (default 0.50)
  type: double
  inputBinding:
    prefix: -at
- id: in_sets_frequency_bases
  doc: sets frequency of A bases (default 0.25)
  type: double
  inputBinding:
    prefix: -a
- id: in_sets_frequency_c
  doc: sets frequency of C bases (default 0.25)
  type: double
  inputBinding:
    prefix: -c
- id: in_sets_frequency_g
  doc: sets frequency of G bases (default 0.25)
  type: double
  inputBinding:
    prefix: -g
- id: in_sets_frequency_t
  doc: sets frequency of T bases (default 0.25)
  type: double
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sequence
