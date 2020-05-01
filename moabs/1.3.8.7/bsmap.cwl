#!/usr/bin/env cwl-runner

baseCommand:
- bsmap
class: CommandLineTool
cwlVersion: v1.0
id: bsmap
inputs:
- doc: <str>   query a file, FASTA/FASTQ/BAM format
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: <str>   reference sequences file, FASTA format
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: <str>   output alignment file, BSP/SAM/BAM format, if omitted, the output will
    be written to STDOUT in SAM format.
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '<int>   start from the Nth read or read pair, default: 1'
  id: b
  inputBinding:
    prefix: -B
  type: boolean
- doc: '<int>   end at the Nth read or read pair, default: 4,294,967,295'
  id: e
  inputBinding:
    prefix: -E
  type: boolean
- doc: <int>   index interval, default=4
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: '<float> set the cut-off ratio for over-represented kmers, default=5e-07 example:
    -k 1e-6 means the top 0.0001% over-represented kmer will be skipped in alignment'
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: <int>   number of processors to use, default=8
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: "<str>   activating RRBS mapping mode and set restriction enzyme digestion\
    \ sites.  digestion position marked by '-', example: -D C-CGG for MspI digestion.\
    \ default: none (whole genome shotgun bisulfite mapping mode)"
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: <int>   seed for random number generation used in selecting multiple hits other
    seed values generate pseudo random number based on read index number, to allow
    reproducible mapping results.  default=0. (get seed from system clock, mapping
    results not resproducible.)
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: '[0,1]   set mapping strand information. default: 0 -n 0: only map to 2 forward
    strands, i.e. BSW(++) and BSC(-+),  for PE sequencing, map read#1 to ++ and -+,
    read#2 to +- and --. -n 1: map SE or PE reads to all 4 strands, i.e. ++, +-, -+,
    -- '
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '<str>   set alignment information for the additional nucleotide transition.  <str>
    is in the form of two different nucleotides N1N2,  indicating N1 in the reads
    could be mapped to N2 in the reference sequences. default: -M TC, corresponds
    to C=>U(T) transition in bisulfite conversion.  example: -M GA could be used to
    detect A=>I(G) transition in RNA editing. '
  id: m
  inputBinding:
    prefix: -M
  type: boolean
- doc: <int>   quality threshold in trimming, 0-40, default=0 (no trim)
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: <int>   base quality, default=33 [Illumina is using 64, Sanger Institute is
    using 33]
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: <int>   filter low-quality reads containing >n Ns, default=5
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '<str>   3-end adapter sequence, default: none (no trim)'
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: <int>   map the first N nucleotides of the read, default:160 (map the whole
    read).
  id: l
  inputBinding:
    prefix: -L
  type: boolean
- doc: '[0,1,2] how to report repeat hits, 0=none(unique hit/pair); 1=random one;
    2=all(slow), default:1.'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: print corresponding reference sequences in SAM output, default=off
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: report unmapped reads, default=off
  id: u
  inputBinding:
    prefix: -u
  type: boolean
- doc: do not print header information in SAM format output
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: '[0,1,2] verbose level: 0=no message displayed (quiet mode);  1=major message
    (default); 2=detailed message.'
  id: v
  inputBinding:
    prefix: -V
  type: boolean
- doc: leave the output bam unsorted(reads will follow the order of the input fastq
    files), default=off
  id: u
  inputBinding:
    prefix: -U
  type: boolean
- doc: <str>   query b file
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: <int>   minimal insert size allowed, default=28
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: <int>   maximal insert size allowed, default=1000
  id: x
  inputBinding:
    prefix: -x
  type: boolean
