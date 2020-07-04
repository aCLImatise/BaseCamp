class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mason_methylation.cwl
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
  doc: 'Seed for RNG. Default: 0.'
  type: long
  inputBinding:
    prefix: --seed
- id: in
  doc: 'Input FASTA file with genome. Valid filetypes are: .sam[.*], .raw[.*], .gbk[.*],
    .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*],
    .embl[.*], and .bam, where * is any of the following extensions: gz and bgzf for
    transparent (de)compression.'
  type: string
  inputBinding:
    prefix: --in
- id: out
  doc: 'Input FASTA file with genome. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*],
    .fq[.*], .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], and .bam,
    where * is any of the following extensions: gz and bgzf for transparent (de)compression.'
  type: string
  inputBinding:
    prefix: --out
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
- mason_methylation
