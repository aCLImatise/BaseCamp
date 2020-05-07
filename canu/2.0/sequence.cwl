class: CommandLineTool
id: sequence.cwl
inputs:
- id: split_n
  doc: split sequences at N bases before computing length
  type: boolean
  inputBinding:
    prefix: -split-n
- id: simple
  doc: output a simple 'length numSequences' histogram
  type: boolean
  inputBinding:
    prefix: -simple
- id: lengths
  doc: output a list of the sequence lengths
  type: boolean
  inputBinding:
    prefix: -lengths
- id: as_sequences
  doc: load data as complete sequences (for testing)
  type: boolean
  inputBinding:
    prefix: -assequences
- id: as_bases
  doc: load data as blocks of bases    (for testing)
  type: boolean
  inputBinding:
    prefix: -asbases
- id: length
  doc: "print sequence if it is at least 'min' bases and at most 'max' bases long\
    \ a 'baselist' is a set of integers formed from any combination of the following,\
    \ seperated by a comma: num       a single number bgn-end   a range of numbers:\
    \  bgn <= end bases are spaced-based; -bases 0-2,4 will print the bases between\
    \ the first two spaces (the first two bases) and the base after the fourth space\
    \ (the fifth base). a 'seqlist' is a set of integers formed from any combination\
    \ of the following, seperated by a comma: num       a single number bgn-end  \
    \ a range of numbers:  bgn <= end sequences are 1-based; -sequences 1,3-5 will\
    \ print the first, third, fourth and fifth sequences."
  type: long
  inputBinding:
    prefix: -length
- id: genome
  doc: sample reads from these sequences
  type: string
  inputBinding:
    prefix: -genome
- id: circular
  doc: treat the sequences in G as circular
  type: boolean
  inputBinding:
    prefix: -circular
- id: genome_size
  doc: genome size to use for deciding coverage below
  type: string
  inputBinding:
    prefix: -genomesize
- id: coverage
  doc: generate approximately c coverage of output
  type: string
  inputBinding:
    prefix: -coverage
- id: n_reads
  doc: generate exactly n reads of output
  type: string
  inputBinding:
    prefix: -nreads
- id: n_bases
  doc: generate approximately n bases of output
  type: string
  inputBinding:
    prefix: -nbases
- id: distribution
  doc: generate read length by sampling the distribution in file F one column  - each
    line is the length of a sequence two columns - each line has the 'length' and
    'number of sequences' if file F doesn't exist, use a built-in distribution ultra-long-nanopore
    pacbio pacbio-hifi
  type: string
  inputBinding:
    prefix: -distribution
- id: length
  doc: '[-max]   (not implemented)'
  type: long
  inputBinding:
    prefix: -length
- id: output
  doc: (not implemented)
  type: string
  inputBinding:
    prefix: -output
- id: bases
  doc: output B bases.
  type: string
  inputBinding:
    prefix: -bases
- id: reads
  doc: output R reads.
  type: string
  inputBinding:
    prefix: -reads
- id: pairs
  doc: output P pairs (only if -paired).
  type: string
  inputBinding:
    prefix: -pairs
- id: fraction
  doc: output fraction F of the input bases.
  type: string
  inputBinding:
    prefix: -fraction
- id: gc
  doc: sets GC/AT composition (default 0.50)
  type: string
  inputBinding:
    prefix: -gc
- id: at
  doc: sets GC/AT composition (default 0.50)
  type: string
  inputBinding:
    prefix: -at
- id: a
  doc: sets frequency of A bases (default 0.25)
  type: string
  inputBinding:
    prefix: -a
- id: c
  doc: sets frequency of C bases (default 0.25)
  type: string
  inputBinding:
    prefix: -c
- id: g
  doc: sets frequency of G bases (default 0.25)
  type: string
  inputBinding:
    prefix: -g
- id: t
  doc: sets frequency of T bases (default 0.25)
  type: string
  inputBinding:
    prefix: -t
- id: gc
  doc: 0.6 -a 0.1 -t 0.3 -- sets G = C = 0.3, A = 0.1, T = 0.3
  type: boolean
  inputBinding:
    prefix: -gc
- id: a
  doc: 0.1 -t 0.3 -gc 0.6 -- sets G = C = 0.3, A = T = 0.15
  type: boolean
  inputBinding:
    prefix: -a
- id: a
  doc: '1.25 -- results in a sum of 2.0 (1.25 + 0.25 + 0.25 + 0.25) so final frequencies
    will be: A =         1.25/2 = 0.625 C = G = T = 0.25/2 = 0.125.'
  type: boolean
  inputBinding:
    prefix: -a
- id: gc
  doc: '0.8 -a 1.0 -t 0.2 -- sum is also 2.0, final frequencies will be: A =         1.00/2
    = 0.5 C = G =     0.40/2 = 0.2 T =         0.20/2 = 0.1'
  type: boolean
  inputBinding:
    prefix: -gc
outputs: []
cwlVersion: v1.1
baseCommand:
- sequence
