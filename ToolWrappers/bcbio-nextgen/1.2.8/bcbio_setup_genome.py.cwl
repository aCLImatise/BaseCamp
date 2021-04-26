class: CommandLineTool
id: bcbio_setup_genome.py.cwl
inputs:
- id: in__name_build
  doc: '[-g GTF] -n NAME -b BUILD'
  type: string?
  inputBinding:
    prefix: -f
- id: in_cores
  doc: number of cores to use
  type: long?
  inputBinding:
    prefix: --cores
- id: in_gff_three
  doc: File is a GFF3 file.
  type: boolean?
  inputBinding:
    prefix: --gff3
- id: in_space_separated_list
  doc: "[{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq}\
    \ [{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq}\
    \ ...]], --indexes [{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq}\
    \ [{bwa,rtg,hisat2,bbmap,bowtie,bowtie2,minimap2,novoalign,twobit,bismark,snap,star,seq}\
    \ ...]]\nSpace separated list of indexes to make"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_er_cc
  doc: Add ERCC spike-ins.
  type: boolean?
  inputBinding:
    prefix: --ercc
- id: in_mir_base
  doc: species in mirbase for smallRNAseq data.
  type: string?
  inputBinding:
    prefix: --mirbase
- id: in_srna_gtf
  doc: gtf to use for smallRNAseq data.
  type: string?
  inputBinding:
    prefix: --srna_gtf
- id: in_build_version
  doc: "String describing build of genome used. Examples:\nEnsembl_94, EnsemblMetazoa_94,\
    \ Flybase_21, etc"
  type: string?
  inputBinding:
    prefix: --buildversion
- id: in_fast_a
  doc: FASTA file of the genome.
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_gtf
  doc: GTF file of the transcriptome
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_name
  doc: Name of organism, for example Hsapiens.
  type: string?
  inputBinding:
    prefix: --name
- id: in_build
  doc: "Build of genome, for example hg19.\n"
  type: long?
  inputBinding:
    prefix: --build
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcbio-nextgen:1.2.8--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- bcbio_setup_genome.py
