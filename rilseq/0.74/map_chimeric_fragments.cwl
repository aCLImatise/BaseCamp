#!/usr/bin/env cwl-runner

baseCommand:
- map_chimeric_fragments.py
class: CommandLineTool
cwlVersion: v1.0
id: map_chimeric_fragments.py
inputs:
- doc: Name of genome fasta file. The file must be indexed usingbwa index command
    prior to this run.
  id: genome_fast_a
  inputBinding:
    position: 0
  type: string
- doc: One or more bam files.
  id: bam_files
  inputBinding:
    position: 1
  type: string
- doc: "Treat the reads as reverse complement. This means that the first read is actually\
    \ the 3' end of the fragment. Use this when using Jonathan Livny's protocol for\
    \ library construction (default: False)"
  id: reverse_complement
  inputBinding:
    prefix: --reverse_complement
  type: boolean
- doc: 'A gff file of transcripts. If given, screen reads that might reside from the
    same transcript. Very useful for screening ribosomal RNAs. Otherwise use only
    the size limit. (default: None)'
  id: transcripts
  inputBinding:
    prefix: --transcripts
  type: string
- doc: 'Maximal distance between concordant reads. If they are generated from the
    same strand but larger than this distance they will be considered as chimeric.
    (default: 1000)'
  id: distance
  inputBinding:
    prefix: --distance
  type: string
- doc: 'Threshold for dust filter. If 0 skip. (default: 10)'
  id: dust_thr
  inputBinding:
    prefix: --dust_thr
  type: string
- doc: 'Output directory, default is this directory. (default: ./remapped-data/)'
  id: dir_out
  inputBinding:
    prefix: --dirout
  type: string
- doc: 'Map all reads in the BAM file, write all the fragments that are not chimeric
    to the file specified here e.g. -a single_fragments_mapping.txt. By default these
    reads will be written to the standard output. (default: None)'
  id: all_reads
  inputBinding:
    prefix: --all_reads
  type: string
- doc: "By default map all reads in the BAM file, write all the fragments, either\
    \ chimeric ro single to the output file (stdout). If this option is selected don't\
    \ wirte the single reads. (default: True)"
  id: add_all_reads
  inputBinding:
    prefix: --add_all_reads
  type: boolean
- doc: 'Remove reads that are probably a result of circular RNAs by default. If the
    reads are close but in opposite order they will be removed unless this argument
    is set. (default: False)'
  id: keep_circular
  inputBinding:
    prefix: --keep_circular
  type: boolean
- doc: 'Length of sequence to map. Take the ends of the fragment and map each to the
    genome. The length of the region will be this length. (default: 25)'
  id: length
  inputBinding:
    prefix: --length
  type: long
- doc: 'Find alignment allowing this number of mismatches. If there are more than
    one match with this number of mismatches the read will be treated as if it might
    match all of them and if there is one scenario in which the two ends are concordant
    it will be removed. (default: 3)'
  id: max_mismatches
  inputBinding:
    prefix: --max_mismatches
  type: long
- doc: 'This number of mismatches is allowed between the a match and the genome. If
    there are mapped reads with less than --max_mismatches mismatches but more than
    this number the read will be ignored. (default: 1)'
  id: allowed_mismatches
  inputBinding:
    prefix: --allowed_mismatches
  type: string
- doc: 'Skip the mapping step, use previously mapped files. (default: False)'
  id: skip_mapping
  inputBinding:
    prefix: --skip_mapping
  type: boolean
- doc: 'If a read has more than this fraction of Gs remove this readfrom the screen.
    This is due to nextseq technology which puts G where there is no signal, the poly
    G might just be noise. When using other sequencing technologies set to 1. (default:
    0.8)'
  id: maxg
  inputBinding:
    prefix: --maxG
  type: long
- doc: 'Name of features to count on the GTF file (column 2). (default: exon)'
  id: feature
  inputBinding:
    prefix: --feature
  type: string
- doc: 'Name of identifier to print (in column 8 of the GTF file). (default: gene_id)'
  id: identifier
  inputBinding:
    prefix: --identifier
  type: string
- doc: 'bwa command (default: bwa)'
  id: bwa_exec
  inputBinding:
    prefix: --bwa_exec
  type: string
- doc: 'Samtools executable. (default: samtools)'
  id: sam_tools_cmd
  inputBinding:
    prefix: --samtools_cmd
  type: string
- doc: 'Additional parameters for aln function of bwa. (default: -t 8 -N -M 0)'
  id: params_aln
  inputBinding:
    prefix: --params_aln
  type: string
- doc: 'Additional parameters for samse function of bwa. (default: -n 1000)'
  id: sam_se_params
  inputBinding:
    prefix: --samse_params
  type: string
