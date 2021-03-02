class: CommandLineTool
id: mason_materializer.cwl
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
  doc: 'Seed for random number generation. Default: 0.'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_meth_seed
  doc: "Seed for methylation simulation random number generation. Default:\n0."
  type: long?
  inputBinding:
    prefix: --meth-seed
- id: in_out
  doc: "Output of materialized contigs. Valid filetypes are: .sam[.*],\n.raw[.*],\
    \ .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*],\n.fasta[.*], .faa[.*], .fa[.*],\
    \ and .bam, where * is any of the\nfollowing extensions: gz and bgzf for transparent\
    \ (de)compression."
  type: File?
  inputBinding:
    prefix: --out
- id: in_out_breakpoints
  doc: "TSV file to write breakpoints in variants to. Valid filetypes are:\n.txt and\
    \ .tsv."
  type: File?
  inputBinding:
    prefix: --out-breakpoints
- id: in_haplotype_name_sep
  doc: 'String separating contig name from haplotype number. Default: /.'
  type: long?
  inputBinding:
    prefix: --haplotype-name-sep
- id: in_meth_fast_a_in
  doc: "FASTA file with methylation levels of the input file. Valid\nfiletypes are:\
    \ .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*],\n.fna[.*], .ffn[.*], .fastq[.*],\
    \ .fasta[.*], .faa[.*], .fa[.*],\n.embl[.*], and .bam, where * is any of the following\
    \ extensions: gz\nand bgzf for transparent (de)compression."
  type: File?
  inputBinding:
    prefix: --meth-fasta-in
- id: in_meth_fast_a_out
  doc: "FASTA file with methylation levels of the output file. Valid\nfiletypes are:\
    \ .sam[.*], .raw[.*], .frn[.*], .fq[.*], .fna[.*],\n.ffn[.*], .fastq[.*], .fasta[.*],\
    \ .faa[.*], .fa[.*], and .bam, where\n* is any of the following extensions: gz\
    \ and bgzf for transparent\n(de)compression."
  type: File?
  inputBinding:
    prefix: --meth-fasta-out
- id: in_input_reference
  doc: "Path to FASTA file to read the reference from. Valid filetypes are:\n.sam[.*],\
    \ .raw[.*], .gbk[.*], .frn[.*], .fq[.*], .fna[.*], .ffn[.*],\n.fastq[.*], .fasta[.*],\
    \ .faa[.*], .fa[.*], .embl[.*], and .bam,\nwhere * is any of the following extensions:\
    \ gz and bgzf for\ntransparent (de)compression."
  type: File?
  inputBinding:
    prefix: --input-reference
- id: in_input_vcf
  doc: "Path to the VCF file with variants to apply. Valid filetype is:\n.vcf[.*],\
    \ where * is any of the following extensions: gz and bgzf\nfor transparent (de)compression."
  type: File?
  inputBinding:
    prefix: --input-vcf
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
- id: out_out
  doc: "Output of materialized contigs. Valid filetypes are: .sam[.*],\n.raw[.*],\
    \ .frn[.*], .fq[.*], .fna[.*], .ffn[.*], .fastq[.*],\n.fasta[.*], .faa[.*], .fa[.*],\
    \ and .bam, where * is any of the\nfollowing extensions: gz and bgzf for transparent\
    \ (de)compression."
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_breakpoints
  doc: "TSV file to write breakpoints in variants to. Valid filetypes are:\n.txt and\
    \ .tsv."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_breakpoints)
- id: out_meth_fast_a_out
  doc: "FASTA file with methylation levels of the output file. Valid\nfiletypes are:\
    \ .sam[.*], .raw[.*], .frn[.*], .fq[.*], .fna[.*],\n.ffn[.*], .fastq[.*], .fasta[.*],\
    \ .faa[.*], .fa[.*], and .bam, where\n* is any of the following extensions: gz\
    \ and bgzf for transparent\n(de)compression."
  type: File?
  outputBinding:
    glob: $(inputs.in_meth_fast_a_out)
hints: []
cwlVersion: v1.1
baseCommand:
- mason_materializer
