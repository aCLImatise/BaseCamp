#!/usr/bin/env cwl-runner

baseCommand:
- kneaddata_bowtie2_discordant_pairs
class: CommandLineTool
cwlVersion: v1.0
id: kneaddata_bowtie2_discordant_pairs
inputs:
- doc: the database index file
  id: x
  inputBinding:
    prefix: -x
  type: string
- doc: the name of the output files for the paired reads without any alignments
  id: un_pair
  inputBinding:
    prefix: --un-pair
  type: string
- doc: the name of the output files for the paired reads with concordant alignments
  id: al_pair
  inputBinding:
    prefix: --al-pair
  type: string
- doc: the name of the output files for the orphan reads without alignments
  id: un_single
  inputBinding:
    prefix: --un-single
  type: string
- doc: the name of the output files for the orphan reads with alignments
  id: al_single
  inputBinding:
    prefix: --al-single
  type: string
- doc: the fastq files of orphan reads in comma-delimited list
  id: u
  inputBinding:
    prefix: -U
  type: string
- doc: the file to write the sam output
  id: s
  inputBinding:
    prefix: -S
  type: string
- doc: the path to the bowtie2 executable
  id: bowtie2
  inputBinding:
    prefix: --bowtie2
  type: string
- doc: the number of threads to use
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: the bowtie2 options to apply
  id: bowtie2_options
  inputBinding:
    prefix: --bowtie2-options
  type: string
- doc: concatenate pair files before aligning so reads are aligned as single end
  id: cat_pairs
  inputBinding:
    prefix: --cat-pairs
  type: boolean
- doc: print the sequences in the same order as the input files
  id: reorder
  inputBinding:
    prefix: --reorder
  type: boolean
