#!/usr/bin/env cwl-runner

baseCommand:
- bcbio_setup_genome.py
class: CommandLineTool
cwlVersion: v1.0
id: bcbio_setup_genome.py
inputs:
- doc: number of cores to use
  id: cores
  inputBinding:
    prefix: --cores
  type: string
- doc: FASTA file of the genome.
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: string
- doc: File is a GFF3 file.
  id: gff3
  inputBinding:
    prefix: --gff3
  type: boolean
- doc: GTF file of the transcriptome
  id: gtf
  inputBinding:
    prefix: --gtf
  type: string
- doc: Name of organism, for example Hsapiens.
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: Build of genome, for example hg19.
  id: build
  inputBinding:
    prefix: --build
  type: string
- doc: '[{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq}
    [{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq}
    ...]], --indexes [{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq}
    [{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq}
    ...]] Space separated list of indexes to make'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: Add ERCC spike-ins.
  id: er_cc
  inputBinding:
    prefix: --ercc
  type: boolean
- doc: species in mirbase for smallRNAseq data.
  id: mir_base
  inputBinding:
    prefix: --mirbase
  type: string
- doc: gtf to use for smallRNAseq data.
  id: srna_gtf
  inputBinding:
    prefix: --srna_gtf
  type: string
- doc: 'String describing build of genome used. Examples: Ensembl_94, EnsemblMetazoa_94,
    Flybase_21, etc'
  id: build_version
  inputBinding:
    prefix: --buildversion
  type: string
