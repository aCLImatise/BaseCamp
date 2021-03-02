class: CommandLineTool
id: mason_methylation.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean?
  inputBinding:
    prefix: --version-check
- id: in_quiet
  doc: Low verbosity.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Higher verbosity.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_very_verbose
  doc: Highest verbosity.
  type: boolean?
  inputBinding:
    prefix: --very-verbose
- id: in_seed
  doc: 'Seed for RNG. Default: 0.'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_in
  doc: "Input FASTA file with genome. Valid filetypes are: .sam[.*],\n.raw[.*], .gbk[.*],\
    \ .frn[.*], .fq[.*], .fna[.*], .ffn[.*],\n.fastq[.*], .fasta[.*], .faa[.*], .fa[.*],\
    \ .embl[.*], and .bam,\nwhere * is any of the following extensions: gz and bgzf\
    \ for\ntransparent (de)compression."
  type: File?
  inputBinding:
    prefix: --in
- id: in_out
  doc: "Input FASTA file with genome. Valid filetypes are: .sam[.*],\n.raw[.*], .frn[.*],\
    \ .fq[.*], .fna[.*], .ffn[.*], .fastq[.*],\n.fasta[.*], .faa[.*], .fa[.*], and\
    \ .bam, where * is any of the\nfollowing extensions: gz and bgzf for transparent\
    \ (de)compression."
  type: File?
  inputBinding:
    prefix: --out
- id: in_methylation_levels
  doc: Enable methylation level simulation.
  type: boolean?
  inputBinding:
    prefix: --methylation-levels
- id: in_meth_cg_mu
  doc: "Median of beta distribution for methylation level of CpG loci. In\nrange [0..1].\
    \ Default: 0.6."
  type: double?
  inputBinding:
    prefix: --meth-cg-mu
- id: in_meth_cg_sigma
  doc: "Standard deviation of beta distribution for methylation level of CpG\nloci.\
    \ In range [0..1]. Default: 0.03."
  type: double?
  inputBinding:
    prefix: --meth-cg-sigma
- id: in_meth_chg_mu
  doc: "Median of beta distribution for methylation level of CHG loci. In\nrange [0..1].\
    \ Default: 0.08."
  type: double?
  inputBinding:
    prefix: --meth-chg-mu
- id: in_meth_chg_sigma
  doc: "Standard deviation of beta distribution for methylation level of CHG\nloci.\
    \ In range [0..1]. Default: 0.008."
  type: double?
  inputBinding:
    prefix: --meth-chg-sigma
- id: in_meth_chh_mu
  doc: "Median of beta distribution for methylation level of CHH loci. In\nrange [0..1].\
    \ Default: 0.05."
  type: double?
  inputBinding:
    prefix: --meth-chh-mu
- id: in_meth_chh_sigma
  doc: "Standard deviation of beta distribution for methylation level of CHH\nloci.\
    \ In range [0..1]. Default: 0.005."
  type: double?
  inputBinding:
    prefix: --meth-chh-sigma
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mason_methylation
