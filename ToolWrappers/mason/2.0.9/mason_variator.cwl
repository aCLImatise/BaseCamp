class: CommandLineTool
id: mason_variator.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean?
  inputBinding:
    prefix: --version-check
- id: in_quiet
  doc: Set verbosity to a minimum.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Enable verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_very_verbose
  doc: Enable very verbose output.
  type: boolean?
  inputBinding:
    prefix: --very-verbose
- id: in_seed
  doc: 'The seed to use for the random number generator. Default: 0.'
  type: long?
  inputBinding:
    prefix: --seed
- id: in_in_reference
  doc: 'FASTA file with reference. Valid filetypes are: .fasta and .fa.'
  type: File?
  inputBinding:
    prefix: --in-reference
- id: in_in_variant_tsv
  doc: first two columns of this TSV file are
  type: File?
  inputBinding:
    prefix: --in-variant-tsv
- id: in_out_vcf
  doc: 'VCF file to write simulated variations to. Valid filetype is: .vcf.'
  type: File?
  inputBinding:
    prefix: --out-vcf
- id: in_out_fast_a
  doc: "FASTA file to write simulated haplotypes to. Valid filetypes are:\n.fasta\
    \ and .fa."
  type: File?
  inputBinding:
    prefix: --out-fasta
- id: in_out_breakpoints
  doc: "TSV file to write breakpoints in variants to. Valid filetypes are:\n.txt and\
    \ .tsv."
  type: File?
  inputBinding:
    prefix: --out-breakpoints
- id: in_haplotype_name_sep
  doc: 'Haplotype name separator in output FASTA. Default: /.'
  type: string?
  inputBinding:
    prefix: --haplotype-name-sep
- id: in_no_gen_var_ids
  doc: Do not generate variant ids.
  type: boolean?
  inputBinding:
    prefix: --no-gen-var-ids
- id: in_num_haplotypes
  doc: 'The number of haplotypes to simulate. In range [1..inf]. Default: 1.'
  type: long?
  inputBinding:
    prefix: --num-haplotypes
- id: in_haplotype_sep
  doc: "The separator between the chromosome and the haplotype name in the\noutput\
    \ FASTA file. Default: /."
  type: File?
  inputBinding:
    prefix: --haplotype-sep
- id: in_snp_rate
  doc: 'Per-base SNP rate. In range [0.0..1.0]. Default: 0.0001.'
  type: double?
  inputBinding:
    prefix: --snp-rate
- id: in_small_in_del_rate
  doc: 'Small indel rate. In range [0.0..1.0]. Default: 0.000001.'
  type: double?
  inputBinding:
    prefix: --small-indel-rate
- id: in_min_small_in_del_size
  doc: 'Minimal small indel size to simulate. In range [0..inf]. Default: 1.'
  type: long?
  inputBinding:
    prefix: --min-small-indel-size
- id: in_max_small_in_del_size
  doc: 'Maximal small indel size to simulate. In range [0..inf]. Default: 6.'
  type: long?
  inputBinding:
    prefix: --max-small-indel-size
- id: in_sv_in_del_rate
  doc: 'Per-base SNP rate. In range [0.0..1.0]. Default: 0.0000001.'
  type: double?
  inputBinding:
    prefix: --sv-indel-rate
- id: in_sv_inversion_rate
  doc: 'Per-base SNP rate. In range [0.0..1.0]. Default: 0.0000001.'
  type: double?
  inputBinding:
    prefix: --sv-inversion-rate
- id: in_sv_translocation_rate
  doc: 'Per-base SNP rate. In range [0.0..1.0]. Default: 0.0000001.'
  type: double?
  inputBinding:
    prefix: --sv-translocation-rate
- id: in_sv_duplication_rate
  doc: 'Per-base SNP rate. In range [0.0..1.0]. Default: 0.0000001.'
  type: double?
  inputBinding:
    prefix: --sv-duplication-rate
- id: in_min_sv_size
  doc: 'Minimal SV size to simulate. In range [0..inf]. Default: 50.'
  type: long?
  inputBinding:
    prefix: --min-sv-size
- id: in_max_sv_size
  doc: 'Maximal SV size to simulate. In range [0..inf]. Default: 1000.'
  type: long?
  inputBinding:
    prefix: --max-sv-size
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
- id: in_meth_fast_a_in
  doc: "Path to load original methylation levels from. Methylation levels\nare simulated\
    \ if omitted. Valid filetypes are: .sam[.*], .raw[.*],\n.gbk[.*], .frn[.*], .fq[.*],\
    \ .fna[.*], .ffn[.*], .fastq[.*],\n.fasta[.*], .faa[.*], .fa[.*], .embl[.*], and\
    \ .bam, where * is any\nof the following extensions: gz and bgzf for transparent\n\
    (de)compression."
  type: File?
  inputBinding:
    prefix: --meth-fasta-in
- id: in_meth_fast_a_out
  doc: "Path to write methylation levels to as FASTA. Only written if\n-of/--out-fasta\
    \ is given. Valid filetypes are: .sam[.*], .raw[.*],\n.frn[.*], .fq[.*], .fna[.*],\
    \ .ffn[.*], .fastq[.*], .fasta[.*],\n.faa[.*], .fa[.*], and .bam, where * is any\
    \ of the following\nextensions: gz and bgzf for transparent (de)compression."
  type: File?
  inputBinding:
    prefix: --meth-fasta-out
- id: in_ins
  doc: An insertion.
  type: string
  inputBinding:
    position: 0
- id: in_del
  doc: A deletion.
  type: string
  inputBinding:
    position: 1
- id: in_in_v
  doc: An inversion.
  type: string
  inputBinding:
    position: 2
- id: in_ctr
  doc: An intra-chromosomal translocation.
  type: string
  inputBinding:
    position: 3
- id: in_dup
  doc: A duplication
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_breakpoints
  doc: "TSV file to write breakpoints in variants to. Valid filetypes are:\n.txt and\
    \ .tsv."
  type: File?
  outputBinding:
    glob: $(inputs.in_out_breakpoints)
- id: out_haplotype_sep
  doc: "The separator between the chromosome and the haplotype name in the\noutput\
    \ FASTA file. Default: /."
  type: File?
  outputBinding:
    glob: $(inputs.in_haplotype_sep)
- id: out_meth_fast_a_out
  doc: "Path to write methylation levels to as FASTA. Only written if\n-of/--out-fasta\
    \ is given. Valid filetypes are: .sam[.*], .raw[.*],\n.frn[.*], .fq[.*], .fna[.*],\
    \ .ffn[.*], .fastq[.*], .fasta[.*],\n.faa[.*], .fa[.*], and .bam, where * is any\
    \ of the following\nextensions: gz and bgzf for transparent (de)compression."
  type: File?
  outputBinding:
    glob: $(inputs.in_meth_fast_a_out)
hints: []
cwlVersion: v1.1
baseCommand:
- mason_variator
