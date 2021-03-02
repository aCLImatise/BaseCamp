class: CommandLineTool
id: create_phylowgs_inputs.py.cwl
inputs:
- id: in_vcf_type
  doc: "Type of VCF file for each sample, specified as\n<sample>=<vcf_type>. Valid\
    \ VCF types are strelka,mutec\nt_pcawg,dkfz,muse,vardict,mutect_smchet,mutect_tcga,sa\n\
    nger,pcawg_consensus. (default: None)"
  type: File?
  inputBinding:
    prefix: --vcf-type
- id: in_error_rate
  doc: "Expected error rate of sequencing platform (default:\n0.001)"
  type: double?
  inputBinding:
    prefix: --error-rate
- id: in_missing_variant_confidence
  doc: "Confidence in range [0, 1] that SSMs missing from a\nsample are indeed not\
    \ present in that sample (default:\n1.0)"
  type: double?
  inputBinding:
    prefix: --missing-variant-confidence
- id: in_sample_size
  doc: "Subsample SSMs to reduce PhyloWGS runtime (default:\nNone)"
  type: long?
  inputBinding:
    prefix: --sample-size
- id: in_priority_ssms
  doc: "File containing newline-separated list of SSMs in\n\"<chr>_<locus>\" format\
    \ to prioritize for inclusion\n(default: None)"
  type: File?
  inputBinding:
    prefix: --priority-ssms
- id: in_only_priority
  doc: "Only sample variants provided on priority list\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --only-priority
- id: in_cn_vs
  doc: "Path to CNV file created with parse_cnvs.py for each\nsample. Specified as\
    \ <sample>=<CNV path>. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --cnvs
- id: in_regions
  doc: "Which regions to use variants from. Refer to the\nparser README for more details.\
    \ (default:\nnormal_and_abnormal_cn)"
  type: string?
  inputBinding:
    prefix: --regions
- id: in_output_cn_vs
  doc: 'Output destination for CNVs (default: cnv_data.txt)'
  type: string?
  inputBinding:
    prefix: --output-cnvs
- id: in_output_variants
  doc: "Output destination for variants (default:\nssm_data.txt)"
  type: string?
  inputBinding:
    prefix: --output-variants
- id: in_output_params
  doc: "Output destination for run parameters (default:\nparams.json)"
  type: string?
  inputBinding:
    prefix: --output-params
- id: in_tumor_sample
  doc: "Name of the tumor sample in the input VCF file.\nDefaults to last sample if\
    \ not specified. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --tumor-sample
- id: in_muse_tier
  doc: 'Maximum MuSE tier to include (default: 0)'
  type: long?
  inputBinding:
    prefix: --muse-tier
- id: in_non_subsampled_variants
  doc: "If subsampling, write nonsubsampled variants to\nseparate file, in addition\
    \ to subsampled variants\n(default: None)"
  type: File?
  inputBinding:
    prefix: --nonsubsampled-variants
- id: in_non_subsampled_variants_cn_vs
  doc: "If subsampling, write CNVs for nonsubsampled variants\nto separate file (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --nonsubsampled-variants-cnvs
- id: in_sex
  doc: "Sex of patient. Used to adjust expected variant\nfrequencies on sex chromosomes.\
    \ If auto, patient is\nset to male if any variants are provided on the Y\nchromosome,\
    \ and female otherwise. (default: auto)"
  type: string?
  inputBinding:
    prefix: --sex
- id: in_het_snp_rate
  doc: "Average number of heterozygous SNPs per base used to\ncall copy number. This\
    \ determines how heavily we\nweight somatic CNAs relative to SNVs. Defaults to\
    \ 7\nSNPs per 10 kb, as per Battenberg. (default: 0.0007)"
  type: long?
  inputBinding:
    prefix: --het-snp-rate
- id: in_vcf_files
  doc: "Path to VCF file for each sample. Specified as\n<sample>=<VCF path>."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- create_phylowgs_inputs.py
