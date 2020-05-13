class: CommandLineTool
id: bsmap.cwl
inputs:
- id: a
  doc: <str>   query a file, FASTA/FASTQ/BAM format
  type: boolean
  inputBinding:
    prefix: -a
- id: d
  doc: <str>   reference sequences file, FASTA format
  type: boolean
  inputBinding:
    prefix: -d
- id: o
  doc: <str>   output alignment file, BSP/SAM/BAM format, if omitted, the output will
    be written to STDOUT in SAM format.
  type: boolean
  inputBinding:
    prefix: -o
- id: b
  doc: '<int>   start from the Nth read or read pair, default: 1'
  type: boolean
  inputBinding:
    prefix: -B
- id: e
  doc: '<int>   end at the Nth read or read pair, default: 4,294,967,295'
  type: boolean
  inputBinding:
    prefix: -E
- id: i
  doc: <int>   index interval, default=4
  type: boolean
  inputBinding:
    prefix: -I
- id: k
  doc: '<float> set the cut-off ratio for over-represented kmers, default=5e-07 example:
    -k 1e-6 means the top 0.0001% over-represented kmer will be skipped in alignment'
  type: boolean
  inputBinding:
    prefix: -k
- id: p
  doc: <int>   number of processors to use, default=8
  type: boolean
  inputBinding:
    prefix: -p
- id: d
  doc: "<str>   activating RRBS mapping mode and set restriction enzyme digestion\
    \ sites.  digestion position marked by '-', example: -D C-CGG for MspI digestion.\
    \ default: none (whole genome shotgun bisulfite mapping mode)"
  type: boolean
  inputBinding:
    prefix: -D
- id: s
  doc: <int>   seed for random number generation used in selecting multiple hits other
    seed values generate pseudo random number based on read index number, to allow
    reproducible mapping results.  default=0. (get seed from system clock, mapping
    results not resproducible.)
  type: boolean
  inputBinding:
    prefix: -S
- id: n
  doc: '[0,1]   set mapping strand information. default: 0 -n 0: only map to 2 forward
    strands, i.e. BSW(++) and BSC(-+),  for PE sequencing, map read#1 to ++ and -+,
    read#2 to +- and --. -n 1: map SE or PE reads to all 4 strands, i.e. ++, +-, -+,
    -- '
  type: boolean
  inputBinding:
    prefix: -n
- id: m
  doc: '<str>   set alignment information for the additional nucleotide transition.  <str>
    is in the form of two different nucleotides N1N2,  indicating N1 in the reads
    could be mapped to N2 in the reference sequences. default: -M TC, corresponds
    to C=>U(T) transition in bisulfite conversion.  example: -M GA could be used to
    detect A=>I(G) transition in RNA editing. '
  type: boolean
  inputBinding:
    prefix: -M
- id: q
  doc: <int>   quality threshold in trimming, 0-40, default=0 (no trim)
  type: boolean
  inputBinding:
    prefix: -q
- id: z
  doc: <int>   base quality, default=33 [Illumina is using 64, Sanger Institute is
    using 33]
  type: boolean
  inputBinding:
    prefix: -z
- id: f
  doc: <int>   filter low-quality reads containing >n Ns, default=5
  type: boolean
  inputBinding:
    prefix: -f
- id: a
  doc: '<str>   3-end adapter sequence, default: none (no trim)'
  type: boolean
  inputBinding:
    prefix: -A
- id: l
  doc: <int>   map the first N nucleotides of the read, default:160 (map the whole
    read).
  type: boolean
  inputBinding:
    prefix: -L
- id: r
  doc: '[0,1,2] how to report repeat hits, 0=none(unique hit/pair); 1=random one;
    2=all(slow), default:1.'
  type: boolean
  inputBinding:
    prefix: -r
- id: r
  doc: print corresponding reference sequences in SAM output, default=off
  type: boolean
  inputBinding:
    prefix: -R
- id: u
  doc: report unmapped reads, default=off
  type: boolean
  inputBinding:
    prefix: -u
- id: h
  doc: do not print header information in SAM format output
  type: boolean
  inputBinding:
    prefix: -H
- id: v
  doc: '[0,1,2] verbose level: 0=no message displayed (quiet mode);  1=major message
    (default); 2=detailed message.'
  type: boolean
  inputBinding:
    prefix: -V
- id: u
  doc: leave the output bam unsorted(reads will follow the order of the input fastq
    files), default=off
  type: boolean
  inputBinding:
    prefix: -U
- id: b
  doc: <str>   query b file
  type: boolean
  inputBinding:
    prefix: -b
- id: m
  doc: <int>   minimal insert size allowed, default=28
  type: boolean
  inputBinding:
    prefix: -m
- id: x
  doc: <int>   maximal insert size allowed, default=1000
  type: boolean
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- bsmap
