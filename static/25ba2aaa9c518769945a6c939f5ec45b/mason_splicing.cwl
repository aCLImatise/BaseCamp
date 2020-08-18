class: CommandLineTool
id: ../../../mason_splicing.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: quiet
  doc: Low verbosity.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Higher verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: very_verbose
  doc: Highest verbosity.
  type: boolean
  inputBinding:
    prefix: --very-verbose
- id: seed
  doc: 'Seed for random number generation. Default: 0.'
  type: long
  inputBinding:
    prefix: --seed
- id: out
  doc: 'Output of materialized contigs. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*],
    .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], and .bam,
    where * is any of the following extensions: gz and bgzf for transparent (de)compression.'
  type: string
  inputBinding:
    prefix: --out
- id: haplotype_name_sep
  doc: 'String separating contig name from haplotype number. Default: /.'
  type: string
  inputBinding:
    prefix: --haplotype-name-sep
- id: in_gff
  doc: 'Path to input GFF or GTF file, must be sorted by reference name. Valid filetypes
    are: .gtf[.*], .gff[.*], .gff3[.*], and .gff, where * is any of the following
    extensions: gz and bgzf for transparent (de)compression.'
  type: string
  inputBinding:
    prefix: --in-gff
- id: gff_type
  doc: 'Splicing will filter to the records that have this type. Default: exon.'
  type: string
  inputBinding:
    prefix: --gff-type
- id: gff_group_by
  doc: 'Assign features to their parent using the tag with this name. Default: Parent.'
  type: string
  inputBinding:
    prefix: --gff-group-by
- id: input_reference
  doc: 'Path to FASTA file to read the reference from. Valid filetypes are: .sam[.*],
    .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*],
    .faa[.*], .fa[.*], .embl[.*], and .bam, where * is any of the following extensions:
    gz and bgzf for transparent (de)compression.'
  type: string
  inputBinding:
    prefix: --input-reference
- id: input_vcf
  doc: 'Path to the VCF file with variants to apply. Valid filetype is: .vcf[.*],
    where * is any of the following extensions: gz and bgzf for transparent (de)compression.'
  type: string
  inputBinding:
    prefix: --input-vcf
outputs: []
cwlVersion: v1.1
baseCommand:
- mason_splicing
