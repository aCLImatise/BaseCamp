class: CommandLineTool
id: ../../../mason_variator.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: quiet
  doc: Set verbosity to a minimum.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: very_verbose
  doc: Enable very verbose output.
  type: boolean
  inputBinding:
    prefix: --very-verbose
- id: seed
  doc: 'The seed to use for the random number generator. Default: 0.'
  type: long
  inputBinding:
    prefix: --seed
- id: in_reference
  doc: 'FASTA file with reference. Valid filetypes are: .fasta and .fa.'
  type: string
  inputBinding:
    prefix: --in-reference
- id: in_variant_tsv
  doc: 'TSV file with variants to simulate. See Section on the Variant TSV File below.
    Valid filetypes are: .txt and .tsv.'
  type: string
  inputBinding:
    prefix: --in-variant-tsv
- id: out_vcf
  doc: 'VCF file to write simulated variations to. Valid filetype is: .vcf.'
  type: string
  inputBinding:
    prefix: --out-vcf
- id: out_fast_a
  doc: 'FASTA file to write simulated haplotypes to. Valid filetypes are: .fasta and
    .fa.'
  type: string
  inputBinding:
    prefix: --out-fasta
- id: out_breakpoints
  doc: 'TSV file to write breakpoints in variants to. Valid filetypes are: .txt and
    .tsv.'
  type: string
  inputBinding:
    prefix: --out-breakpoints
- id: haplotype_name_sep
  doc: 'Haplotype name separator in output FASTA. Default: /.'
  type: string
  inputBinding:
    prefix: --haplotype-name-sep
- id: no_gen_var_ids
  doc: Do not generate variant ids.
  type: boolean
  inputBinding:
    prefix: --no-gen-var-ids
- id: num_haplotypes
  doc: 'The number of haplotypes to simulate. In range [1..inf]. Default: 1.'
  type: long
  inputBinding:
    prefix: --num-haplotypes
- id: haplotype_sep
  doc: 'The separator between the chromosome and the haplotype name in the output
    FASTA file. Default: /.'
  type: string
  inputBinding:
    prefix: --haplotype-sep
- id: snp_rate
  doc: 'Per-base SNP rate. In range [0.0..1.0]. Default: 0.0001.'
  type: string
  inputBinding:
    prefix: --snp-rate
- id: small_in_del_rate
  doc: 'Small indel rate. In range [0.0..1.0]. Default: 0.000001.'
  type: string
  inputBinding:
    prefix: --small-indel-rate
- id: min_small_in_del_size
  doc: 'Minimal small indel size to simulate. In range [0..inf]. Default: 1.'
  type: long
  inputBinding:
    prefix: --min-small-indel-size
- id: max_small_in_del_size
  doc: 'Maximal small indel size to simulate. In range [0..inf]. Default: 6.'
  type: long
  inputBinding:
    prefix: --max-small-indel-size
- id: sv_in_del_rate
  doc: 'Per-base SNP rate. In range [0.0..1.0]. Default: 0.0000001.'
  type: string
  inputBinding:
    prefix: --sv-indel-rate
- id: sv_inversion_rate
  doc: 'Per-base SNP rate. In range [0.0..1.0]. Default: 0.0000001.'
  type: string
  inputBinding:
    prefix: --sv-inversion-rate
- id: sv_translocation_rate
  doc: 'Per-base SNP rate. In range [0.0..1.0]. Default: 0.0000001.'
  type: string
  inputBinding:
    prefix: --sv-translocation-rate
- id: sv_duplication_rate
  doc: 'Per-base SNP rate. In range [0.0..1.0]. Default: 0.0000001.'
  type: string
  inputBinding:
    prefix: --sv-duplication-rate
- id: min_sv_size
  doc: 'Minimal SV size to simulate. In range [0..inf]. Default: 50.'
  type: long
  inputBinding:
    prefix: --min-sv-size
- id: max_sv_size
  doc: 'Maximal SV size to simulate. In range [0..inf]. Default: 1000.'
  type: long
  inputBinding:
    prefix: --max-sv-size
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
- id: meth_fast_a_in
  doc: 'Path to load original methylation levels from. Methylation levels are simulated
    if omitted. Valid filetypes are: .sam[.*], .raw[.*], .gbk[.*], .frn[.*], .fq[.*],
    .fna[.*], .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], .embl[.*], and
    .bam, where * is any of the following extensions: gz and bgzf for transparent
    (de)compression.'
  type: string
  inputBinding:
    prefix: --meth-fasta-in
- id: meth_fast_a_out
  doc: 'Path to write methylation levels to as FASTA. Only written if -of/--out-fasta
    is given. Valid filetypes are: .sam[.*], .raw[.*], .frn[.*], .fq[.*], .fna[.*],
    .ffn[.*], .fastq[.*], .fasta[.*], .faa[.*], .fa[.*], and .bam, where * is any
    of the following extensions: gz and bgzf for transparent (de)compression.'
  type: string
  inputBinding:
    prefix: --meth-fasta-out
- id: ins
  doc: An insertion.
  type: string
  inputBinding:
    position: 0
- id: del
  doc: A deletion.
  type: string
  inputBinding:
    position: 1
- id: in_v
  doc: An inversion.
  type: string
  inputBinding:
    position: 2
- id: ctr
  doc: An intra-chromosomal translocation.
  type: string
  inputBinding:
    position: 3
- id: dup
  doc: A duplication
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- mason_variator
