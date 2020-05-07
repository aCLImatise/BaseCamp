class: CommandLineTool
id: bcbio_setup_genome.py.cwl
inputs:
- id: cores
  doc: number of cores to use
  type: string
  inputBinding:
    prefix: --cores
- id: fast_a
  doc: FASTA file of the genome.
  type: string
  inputBinding:
    prefix: --fasta
- id: gff3
  doc: File is a GFF3 file.
  type: boolean
  inputBinding:
    prefix: --gff3
- id: gtf
  doc: GTF file of the transcriptome
  type: string
  inputBinding:
    prefix: --gtf
- id: name
  doc: Name of organism, for example Hsapiens.
  type: string
  inputBinding:
    prefix: --name
- id: build
  doc: Build of genome, for example hg19.
  type: string
  inputBinding:
    prefix: --build
- id: i
  doc: '[{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq}
    [{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq}
    ...]], --indexes [{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq}
    [{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq}
    ...]] Space separated list of indexes to make'
  type: boolean
  inputBinding:
    prefix: -i
- id: er_cc
  doc: Add ERCC spike-ins.
  type: boolean
  inputBinding:
    prefix: --ercc
- id: mir_base
  doc: species in mirbase for smallRNAseq data.
  type: string
  inputBinding:
    prefix: --mirbase
- id: srna_gtf
  doc: gtf to use for smallRNAseq data.
  type: string
  inputBinding:
    prefix: --srna_gtf
- id: build_version
  doc: 'String describing build of genome used. Examples: Ensembl_94, EnsemblMetazoa_94,
    Flybase_21, etc'
  type: string
  inputBinding:
    prefix: --buildversion
outputs: []
cwlVersion: v1.1
baseCommand:
- bcbio_setup_genome.py
