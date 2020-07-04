class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mason_materializer.cwl
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
- id: meth_seed
  doc: 'Seed for methylation simulation random number generation. Default: 0.'
  type: long
  inputBinding:
    prefix: --meth-seed
- id: out
  doc: 'Output of materialized contigs. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*],
    .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], and .bam,
    where * is any of the following extensions: gz and bgzf for transparent (de)compression.'
  type: string
  inputBinding:
    prefix: --out
- id: out_breakpoints
  doc: 'TSV file to write breakpoints in variants to. Valid filetypes are: .txt and
    .tsv.'
  type: string
  inputBinding:
    prefix: --out-breakpoints
- id: haplotype_name_sep
  doc: 'String separating contig name from haplotype number. Default: /.'
  type: string
  inputBinding:
    prefix: --haplotype-name-sep
- id: meth_fast_a_in
  doc: 'FASTA file with methylation levels of the input file. Valid filetypes are:
    .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*],
    .fasta[.*], .faa[.*], .fa[.*], .embl[.*], and .bam, where * is any of the following
    extensions: gz and bgzf for transparent (de)compression.'
  type: string
  inputBinding:
    prefix: --meth-fasta-in
- id: meth_fast_a_out
  doc: 'FASTA file with methylation levels of the output file. Valid filetypes are:
    .sam[.*], .raw[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*],
    .faa[.*], .fa[.*], and .bam, where * is any of the following extensions: gz and
    bgzf for transparent (de)compression.'
  type: string
  inputBinding:
    prefix: --meth-fasta-out
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
- id: methylation_levels
  doc: Enable methylation level simulation.
  type: boolean
  inputBinding:
    prefix: --methylation-levels
- id: meth_cg_mu
  doc: 'Median of beta distribution for methylation level of CpG loci. In range [0..1].
    Default: 0.6.'
  type: string
  inputBinding:
    prefix: --meth-cg-mu
- id: meth_cg_sigma
  doc: 'Standard deviation of beta distribution for methylation level of CpG loci.
    In range [0..1]. Default: 0.03.'
  type: string
  inputBinding:
    prefix: --meth-cg-sigma
- id: meth_chg_mu
  doc: 'Median of beta distribution for methylation level of CHG loci. In range [0..1].
    Default: 0.08.'
  type: string
  inputBinding:
    prefix: --meth-chg-mu
- id: meth_chg_sigma
  doc: 'Standard deviation of beta distribution for methylation level of CHG loci.
    In range [0..1]. Default: 0.008.'
  type: string
  inputBinding:
    prefix: --meth-chg-sigma
- id: meth_chh_mu
  doc: 'Median of beta distribution for methylation level of CHH loci. In range [0..1].
    Default: 0.05.'
  type: string
  inputBinding:
    prefix: --meth-chh-mu
- id: meth_chh_sigma
  doc: 'Standard deviation of beta distribution for methylation level of CHH loci.
    In range [0..1]. Default: 0.005.'
  type: string
  inputBinding:
    prefix: --meth-chh-sigma
outputs: []
cwlVersion: v1.1
baseCommand:
- mason_materializer
