#!/usr/bin/env cwl-runner

baseCommand:
- seqyclean
class: CommandLineTool
cwlVersion: v1.0
id: seqyclean
inputs:
- doc: vector trimming, default=off. <filename> - is a path to a FASTA-file containing
    vector genomes.
  id: turns
  inputBinding:
    prefix: '- Turns'
  type: File
- doc: contaminants screening, default=off, <filename> - is a path to a FASTA-file
    containing contaminant genomes.
  id: turns
  inputBinding:
    prefix: '- Turns'
  type: File
- doc: of k-mer, default=15
  id: common
  inputBinding:
    prefix: '- Common'
  type: string
- doc: consecutive k-mers, default=1
  id: distance
  inputBinding:
    prefix: '- Distance'
  type: string
- doc: k-mer used in sampling contaminat genome, default=15
  id: size
  inputBinding:
    prefix: '- Size'
  type: string
- doc: '<max_error_at_ends> - Turns on quality trimming, default=off. Error boundaries:
    max_average_error (default=0.01), max_error_at_ends (default=0.01)'
  id: qual
  inputBinding:
    prefix: -qual
  type: long
- doc: <max_avg_error> - Bracket window_size (default=0.794) and maximum_average_error
    (default=0.794) for quality trimming
  id: bracket
  inputBinding:
    prefix: -bracket
  type: string
- doc: max_avg_error [window_size max_avg_error ...] - Parameters for window trimming.
    There are two windows with size of 50 and 10bp and max_avg_err of 0.794 by default.
  id: window
  inputBinding:
    prefix: -window
  type: string
- doc: results, default=off
  id: overwrite
  inputBinding:
    prefix: '- Overwrite'
  type: string
- doc: of read to accept, default=50 bp.
  id: minimum
  inputBinding:
    prefix: '- Minimum'
  type: string
- doc: '[cdna] [cerr] [crng] - Turns on poly A/T trimming, default=off. Parameters:
    cdna (default=10) - maximum size of a poly tail, cerr (default=3) - maximum number
    of G/C nucleotides within a tail, cnrg (default=50) - range to look for a tail
    within a read.'
  id: poly_at
  inputBinding:
    prefix: -polyat
  type: boolean
- doc: ', default=off.'
  id: verbose
  inputBinding:
    prefix: '- Verbose'
  type: string
- doc: report for each read, default=off.
  id: generate
  inputBinding:
    prefix: '- Generate'
  type: string
- doc: '[-startdw 10][-sizedw 35] [-maxdup 3] - Turns on screening duplicated sequences,
    default=off. Here: -startdw (defalt=10) and -sizedw (default=25) are starting
    position and size of the window within a read, -maxdup (default=3) - maximum number
    of duplicated sequences allowed.'
  id: dup
  inputBinding:
    prefix: -dup
  type: boolean
- doc: trimming of adapters, default=off.
  id: no_adapter_trim
  inputBinding:
    prefix: -no_adapter_trim
  type: string
- doc: threads (not yet applicable to Illumina mode), default=4.
  id: number
  inputBinding:
    prefix: '- Number'
  type: string
- doc: FASTQ format, default=off.
  id: output
  inputBinding:
    prefix: '- Output'
  type: string
- doc: FASTA format, default=off.
  id: fast_a_out
  inputBinding:
    prefix: -fasta_out
  type: string
- doc: barcodes, default=off. <filename> - a path to a FASTA-file with custom barcodes.
  id: using
  inputBinding:
    prefix: '- Using'
  type: File
- doc: Illumina reads in shuffled file, default=off.
  id: shuffle
  inputBinding:
    prefix: -shuffle
  type: string
- doc: 64-quality base, default = off.
  id: turns
  inputBinding:
    prefix: '- Turns'
  type: string
- doc: using custom adapters, default=off. <filename> - FASTA file with adapters
  id: turns
  inputBinding:
    prefix: '- Turns'
  type: File
- doc: sets the similarity threshold for adapter trimming by overlap (only in paired-end
    mode). By default its value is set to 0.75.
  id: this
  inputBinding:
    prefix: '- This'
  type: string
- doc: turns on merging overlapping paired-end reads and <value> is the minimum overlap
    length. By default the minimum overlap length is 16 base pairs.
  id: overlap
  inputBinding:
    prefix: -overlap
  type: string
- doc: 'fix read IDs, default=off ( As is detailed in: http://contig.wordpress.com/2011/09/01/newbler-input-iii-a-quick-fix-for-the-new-illumina-fastq-header/#more-342
    ).'
  id: new_2old
  inputBinding:
    prefix: -new2old
  type: string
- doc: (GZip format, .gz).
  id: compressed
  inputBinding:
    prefix: '- compressed'
  type: string
- doc: length, default=30 bp.(only for paired-end mode)
  id: maximum
  inputBinding:
    prefix: '- Maximum'
  type: string
