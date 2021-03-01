class: CommandLineTool
id: relocaTE2_temp.py.cwl
inputs:
- id: in_bam
  doc: Name of BAM file of read mapped reference genome
  type: File?
  inputBinding:
    prefix: --bam
- id: in_te_fast_a
  doc: Name of fasta sequence of repeat element
  type: string?
  inputBinding:
    prefix: --te_fasta
- id: in_fq_dir
  doc: Name of directory of input fastq sequence data
  type: Directory?
  inputBinding:
    prefix: --fq_dir
- id: in_genome_fast_a
  doc: Name of fasta file of reference genome sequence
  type: File?
  inputBinding:
    prefix: --genome_fasta
- id: in_reference_ins
  doc: Name of RepeatMasker TE annotation of reference genome
  type: string?
  inputBinding:
    prefix: --reference_ins
- id: in_outdir
  doc: "Name of output directory where to put temperary and\nfinal results"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_size
  doc: Insert size of sequence library, default = 500
  type: long?
  inputBinding:
    prefix: --size
- id: in_cpu
  doc: Number of CPUs to use for multiplex, default = 1
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_mate_one_id
  doc: string define paired-end read1, default = "_1"
  type: long?
  inputBinding:
    prefix: --mate_1_id
- id: in_mate_two_id
  doc: string define paired-end read2, default = "_2"
  type: long?
  inputBinding:
    prefix: --mate_2_id
- id: in_unpaired_id
  doc: string define single-end reads, default = ".unPaired"
  type: string?
  inputBinding:
    prefix: --unpaired_id
- id: in_sample
  doc: "string define sample name which will present in output\nGFF, default = \"\
    not_given\""
  type: string?
  inputBinding:
    prefix: --sample
- id: in_aligner
  doc: "aligner used to map reads to repeat elements,\ndefault=blat"
  type: string?
  inputBinding:
    prefix: --aligner
- id: in_len_cut_match
  doc: "length cutoff threshold for match between reads and\nrepeat elements. Large\
    \ value will lead to less\nsensitive but more accuracy, default = 10"
  type: long?
  inputBinding:
    prefix: --len_cut_match
- id: in_len_cut_trim
  doc: "length cutoff threshold for trimed reads after\ntrimming repeat sequence from\
    \ reads. Large value will\nlead to less sensitive but more accuracy, default =\
    \ 10"
  type: long?
  inputBinding:
    prefix: --len_cut_trim
- id: in_mismatch
  doc: "Number of mismatches allowed for matches between reads\nand repeat elements,\
    \ default = 2"
  type: long?
  inputBinding:
    prefix: --mismatch
- id: in_mismatch_junction
  doc: "Number of mismatches allowed for matches between\njunction reads and repeat\
    \ elements, default = 2"
  type: long?
  inputBinding:
    prefix: --mismatch_junction
- id: in_step
  doc: "Number to control steps of pipeline, default =\n\"1234567\""
  type: long?
  inputBinding:
    prefix: --step
- id: in_dry_run
  doc: write shell scripts only while this script excute
  type: boolean?
  inputBinding:
    prefix: --dry_run
- id: in_run
  doc: run while this script excute
  type: boolean?
  inputBinding:
    prefix: --run
- id: in_split
  doc: split fastq into 1 M chunks to run blat/bwa jobs
  type: boolean?
  inputBinding:
    prefix: --split
- id: in_verbose
  doc: "verbose grade to print out information in all scripts:\nrange from 0 to 4,\
    \ default = 2\n"
  type: long?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Name of output directory where to put temperary and\nfinal results"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- relocaTE2_temp.py
