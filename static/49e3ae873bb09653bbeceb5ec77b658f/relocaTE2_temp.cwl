class: CommandLineTool
id: ../../../relocaTE2_temp.py.cwl
inputs:
- id: bam
  doc: Name of BAM file of read mapped reference genome
  type: string
  inputBinding:
    prefix: --bam
- id: te_fast_a
  doc: Name of fasta sequence of repeat element
  type: string
  inputBinding:
    prefix: --te_fasta
- id: fq_dir
  doc: Name of directory of input fastq sequence data
  type: string
  inputBinding:
    prefix: --fq_dir
- id: genome_fast_a
  doc: Name of fasta file of reference genome sequence
  type: string
  inputBinding:
    prefix: --genome_fasta
- id: reference_ins
  doc: Name of RepeatMasker TE annotation of reference genome
  type: string
  inputBinding:
    prefix: --reference_ins
- id: outdir
  doc: Name of output directory where to put temperary and final results
  type: string
  inputBinding:
    prefix: --outdir
- id: size
  doc: Insert size of sequence library, default = 500
  type: long
  inputBinding:
    prefix: --size
- id: cpu
  doc: Number of CPUs to use for multiplex, default = 1
  type: string
  inputBinding:
    prefix: --cpu
- id: mate_one_id
  doc: string define paired-end read1, default = "_1"
  type: string
  inputBinding:
    prefix: --mate_1_id
- id: mate_two_id
  doc: string define paired-end read2, default = "_2"
  type: string
  inputBinding:
    prefix: --mate_2_id
- id: unpaired_id
  doc: string define single-end reads, default = ".unPaired"
  type: string
  inputBinding:
    prefix: --unpaired_id
- id: sample
  doc: string define sample name which will present in output GFF, default = "not_given"
  type: string
  inputBinding:
    prefix: --sample
- id: aligner
  doc: aligner used to map reads to repeat elements, default=blat
  type: string
  inputBinding:
    prefix: --aligner
- id: len_cut_match
  doc: length cutoff threshold for match between reads and repeat elements. Large
    value will lead to less sensitive but more accuracy, default = 10
  type: string
  inputBinding:
    prefix: --len_cut_match
- id: len_cut_trim
  doc: length cutoff threshold for trimed reads after trimming repeat sequence from
    reads. Large value will lead to less sensitive but more accuracy, default = 10
  type: string
  inputBinding:
    prefix: --len_cut_trim
- id: mismatch
  doc: Number of mismatches allowed for matches between reads and repeat elements,
    default = 2
  type: string
  inputBinding:
    prefix: --mismatch
- id: mismatch_junction
  doc: Number of mismatches allowed for matches between junction reads and repeat
    elements, default = 2
  type: string
  inputBinding:
    prefix: --mismatch_junction
- id: step
  doc: Number to control steps of pipeline, default = "1234567"
  type: string
  inputBinding:
    prefix: --step
- id: dry_run
  doc: write shell scripts only while this script excute
  type: boolean
  inputBinding:
    prefix: --dry_run
- id: run
  doc: run while this script excute
  type: boolean
  inputBinding:
    prefix: --run
- id: split
  doc: split fastq into 1 M chunks to run blat/bwa jobs
  type: boolean
  inputBinding:
    prefix: --split
- id: verbose
  doc: 'verbose grade to print out information in all scripts: range from 0 to 4,
    default = 2'
  type: string
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- relocaTE2_temp.py
