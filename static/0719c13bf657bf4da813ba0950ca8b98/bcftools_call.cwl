class: CommandLineTool
id: bcftools_call.cwl
inputs:
- id: in_no_version
  doc: Do not append version and command line to the header
  type: boolean?
  inputBinding:
    prefix: --no-version
- id: in_output
  doc: Write output to a file [standard output]
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: "|u|z|v     Output type: 'b' compressed BCF; 'u' uncompressed BCF; 'z' compressed\
    \ VCF; 'v' uncompressed VCF [v]"
  type: string?
  inputBinding:
    prefix: --output-type
- id: in_ploidy
  doc: "[?]      Predefined ploidy, 'list' to print available settings, append '?'\
    \ for details [2]"
  type: long?
  inputBinding:
    prefix: --ploidy
- id: in_ploidy_file
  doc: Space/tab-delimited list of CHROM,FROM,TO,SEX,PLOIDY
  type: File?
  inputBinding:
    prefix: --ploidy-file
- id: in_regions
  doc: Restrict to comma-separated list of regions
  type: string?
  inputBinding:
    prefix: --regions
- id: in_regions_file
  doc: Restrict to regions listed in a file
  type: File?
  inputBinding:
    prefix: --regions-file
- id: in_samples
  doc: List of samples to include [all samples]
  type: string?
  inputBinding:
    prefix: --samples
- id: in_samples_file
  doc: PED file or a file with an optional column with sex (see man page for details)
    [all samples]
  type: File?
  inputBinding:
    prefix: --samples-file
- id: in_targets
  doc: Similar to -r but streams rather than index-jumps
  type: string?
  inputBinding:
    prefix: --targets
- id: in_targets_file
  doc: Similar to -R but streams rather than index-jumps
  type: File?
  inputBinding:
    prefix: --targets-file
- id: in_threads
  doc: Use multithreading with INT worker threads [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_keep_alts
  doc: Keep all possible alternate alleles at variant sites
  type: boolean?
  inputBinding:
    prefix: --keep-alts
- id: in_annotate
  doc: Optional tags to output (lowercase allowed); '?' to list available tags
  type: string?
  inputBinding:
    prefix: --annotate
- id: in_prior_freqs
  doc: ',AC       Use prior allele frequencies, determined from these pre-filled tags'
  type: string?
  inputBinding:
    prefix: --prior-freqs
- id: in_group_samples
  doc: "|-    Group samples by population (file with \"sample\\tgroup\") or \"-\"\
    \ for single-sample calling.\nThis requires FORMAT/QS or other Number=R,Type=Integer\
    \ tag such as FORMAT/AD"
  type: File?
  inputBinding:
    prefix: --group-samples
- id: in_group_samples_tag
  doc: The tag to use with -G, by default FORMAT/QS and FORMAT/AD are checked automatically
  type: string?
  inputBinding:
    prefix: --group-samples-tag
- id: in_gvc_f
  doc: ',[...]          Group non-variant sites into gVCF blocks by minimum per-sample
    DP'
  type: long?
  inputBinding:
    prefix: --gvcf
- id: in_insert_missed
  doc: Output also sites missed by mpileup but present in -T
  type: boolean?
  inputBinding:
    prefix: --insert-missed
- id: in_keep_masked_ref
  doc: Keep sites with masked reference allele (REF=N)
  type: boolean?
  inputBinding:
    prefix: --keep-masked-ref
- id: in_skip_variants
  doc: Skip indels/snps
  type: string?
  inputBinding:
    prefix: --skip-variants
- id: in_variants_only
  doc: Output variant sites only
  type: boolean?
  inputBinding:
    prefix: --variants-only
- id: in_consensus_caller
  doc: The original calling method (conflicts with -m)
  type: boolean?
  inputBinding:
    prefix: --consensus-caller
- id: in_constrain
  doc: 'One of: alleles, trio (see manual)'
  type: string?
  inputBinding:
    prefix: --constrain
- id: in_multi_allelic_caller
  doc: Alternative model for multiallelic and rare-variant calling (conflicts with
    -c)
  type: boolean?
  inputBinding:
    prefix: --multiallelic-caller
- id: in_novel_rate
  doc: ',[...]  Likelihood of novel mutation for constrained trio calling, see man
    page for details [1e-8,1e-9,1e-9]'
  type: double?
  inputBinding:
    prefix: --novel-rate
- id: in_pval_threshold
  doc: Variant if P(ref|D)<FLOAT with -c [0.5]
  type: double?
  inputBinding:
    prefix: --pval-threshold
- id: in_prior
  doc: Mutation rate (use bigger for greater sensitivity), use with -m [1.1e-3]
  type: double?
  inputBinding:
    prefix: --prior
- id: in_in_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Write output to a file [standard output]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcftools:1.12--h3f113a9_0
cwlVersion: v1.1
baseCommand:
- bcftools
- call
