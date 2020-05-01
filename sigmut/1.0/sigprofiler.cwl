#!/usr/bin/env cwl-runner

baseCommand:
- sigprofiler
class: CommandLineTool
cwlVersion: v1.0
id: sigprofiler
inputs:
- doc: "Install de novo any of the following reference genomes: 'GRCh37', 'GRCh38',\
    \ 'mm9' or 'mm10'."
  id: install_genome
  inputBinding:
    prefix: --install_genome
  type: string
- doc: Provide a project name
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: 'Provide a reference genome (ex: GRCh37, GRCh38, mm9 or mm10).'
  id: genome
  inputBinding:
    prefix: --genome
  type: string
- doc: Path where the input vcf files are located.
  id: files
  inputBinding:
    prefix: --files
  type: File
- doc: Flag to use only the exome or not.
  id: exo_me
  inputBinding:
    prefix: --exome
  type: boolean
- doc: BED file that contains a list of ranges to be used in generating the matrices.
  id: bed
  inputBinding:
    prefix: --bed
  type: string
- doc: Create the matrices on a per chromosome basis.
  id: chrom
  inputBinding:
    prefix: --chrom
  type: boolean
- doc: Generate the plots for each context.
  id: plot
  inputBinding:
    prefix: --plot
  type: boolean
- doc: Performs a transcriptional strand bias test for the 24, 384, and 6144 contexts.
  id: tsb
  inputBinding:
    prefix: --tsb
  type: boolean
- doc: Performs a gene strand bias test.
  id: gs
  inputBinding:
    prefix: --gs
  type: boolean
