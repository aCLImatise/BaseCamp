#!/usr/bin/env cwl-runner

baseCommand:
- map_single_fragments.py
class: CommandLineTool
cwlVersion: v1.0
id: map_single_fragments.py
inputs:
- doc: Name of genome fasta file. The file must be indexed usingbwa index command
    prior to this run.
  id: genome_fast_a
  inputBinding:
    position: 0
  type: string
- doc: 'Name of gff file to count the reads per gene. If not given or not readable,
    skip this stage. (default: None)'
  id: genes_gff
  inputBinding:
    prefix: --genes_gff
  type: string
- doc: "Treat the reads as reverse complement only when counting number of reads per\
    \ gene and generating wig file. The resulting BAM files will be the original ones.\
    \ Use this when treating libraries built using Livny's protocol. (default: False)"
  id: reverse_complement
  inputBinding:
    prefix: --reverse_complement
  type: boolean
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
- doc: 'Minimal required overlap between the fragment and the feature. (default: 5)'
  id: overlap
  inputBinding:
    prefix: --overlap
  type: string
- doc: 'Allowed mismatches for BWA mapping. (default: 2)'
  id: allowed_mismatches
  inputBinding:
    prefix: --allowed_mismatches
  type: string
- doc: 'Output file names of counts table (suffixed _counts.txt) and wiggle file (suffixed
    _coverage.wig) (default: bwa_mapped_single_reads)'
  id: out_head
  inputBinding:
    prefix: --outhead
  type: string
- doc: 'Output directory, default is this directory. (default: .)'
  id: dir_out
  inputBinding:
    prefix: --dirout
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
- doc: 'Additional parameters for aln function of bwa. (default: -t 8 -R 200)'
  id: params_aln
  inputBinding:
    prefix: --params_aln
  type: string
- doc: 'Additional parameters for sampe function of bwa. (default: -a 1500 -P)'
  id: sampe_params
  inputBinding:
    prefix: --sampe_params
  type: string
- doc: 'Additional parameters for samse function of bwa. (default: )'
  id: sam_se_params
  inputBinding:
    prefix: --samse_params
  type: string
- doc: 'Create a coverage wiggle file. (default: False)'
  id: create_wig
  inputBinding:
    prefix: --create_wig
  type: boolean
