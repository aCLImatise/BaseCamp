#!/usr/bin/env cwl-runner

baseCommand:
- panphlan_map.py
class: CommandLineTool
cwlVersion: v1.0
id: panphlan_map.py
inputs:
- doc: Short read input files. If no file is specified, panphlan_map reads from standard
    input.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Input directory of bowtie2 indexes and pangenome
  id: i_bowtie2_indexes
  inputBinding:
    prefix: --i_bowtie2_indexes
  type: string
- doc: 'Read input format (fasta or fastq), default: fastq, if not fasta recognized
    by file ending.'
  id: fast_x
  inputBinding:
    prefix: --fastx
  type: string
- doc: 'Name of the species or clade: -c ecoli16'
  id: clade
  inputBinding:
    prefix: --clade
  type: string
- doc: 'Mapping result output-file: -o path/sampleID_clade.csv'
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: 'Get BAM output file: --out_bam sampleID.bam'
  id: out_bam
  inputBinding:
    prefix: --out_bam
  type: string
- doc: Maximum number of processors to use. Default is 12 or a lower number of available
    processors.
  id: nproc
  inputBinding:
    prefix: --nproc
  type: string
- doc: 'Maximum amount of memory for Samtools: -mGB 4'
  id: mgb
  inputBinding:
    prefix: --mGB
  type: string
- doc: 'Minimum read length, default: --readLength 70'
  id: read_length
  inputBinding:
    prefix: --readLength
  type: string
- doc: 'Additional bowtie2 mapping options, separated by slash: /-D/20/-R/3/, default:
    -bt2 /--very-sensitive/'
  id: bt2
  inputBinding:
    prefix: --bt2
  type: string
- doc: Number of mismatches to filter (bam)
  id: th_mismatches
  inputBinding:
    prefix: --th_mismatches
  type: string
- doc: 'Directory for temporary files, default: --tmp TMP_panphlan_map'
  id: tmp
  inputBinding:
    prefix: --tmp
  type: string
- doc: Display progress information
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
