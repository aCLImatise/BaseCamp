class: CommandLineTool
id: bcftools_call.cwl
inputs:
- id: in_no_version
  doc: do not append version and command line to the header
  type: boolean?
  inputBinding:
    prefix: --no-version
- id: in_output
  doc: write output to a file [standard output]
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: "output type: 'b' compressed BCF; 'u' uncompressed BCF; 'z' compressed VCF;\
    \ 'v' uncompressed VCF [v]"
  type: string?
  inputBinding:
    prefix: --output-type
- id: in_ploidy
  doc: "[?]      predefined ploidy, 'list' to print available settings, append '?'\
    \ for details"
  type: string?
  inputBinding:
    prefix: --ploidy
- id: in_ploidy_file
  doc: space/tab-delimited list of CHROM,FROM,TO,SEX,PLOIDY
  type: File?
  inputBinding:
    prefix: --ploidy-file
- id: in_regions
  doc: restrict to comma-separated list of regions
  type: string?
  inputBinding:
    prefix: --regions
- id: in_regions_file
  doc: restrict to regions listed in a file
  type: File?
  inputBinding:
    prefix: --regions-file
- id: in_samples
  doc: list of samples to include [all samples]
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
  doc: similar to -r but streams rather than index-jumps
  type: string?
  inputBinding:
    prefix: --targets
- id: in_targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File?
  inputBinding:
    prefix: --targets-file
- id: in_threads
  doc: use multithreading with <int> worker threads [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_keep_alts
  doc: keep all possible alternate alleles at variant sites
  type: boolean?
  inputBinding:
    prefix: --keep-alts
- id: in_format_fields
  doc: 'output format fields: GQ,GP (lowercase allowed) []'
  type: string?
  inputBinding:
    prefix: --format-fields
- id: in_prior_freqs
  doc: <AN,AC>       use prior allele frequencies
  type: boolean?
  inputBinding:
    prefix: --prior-freqs
- id: in_group_samples
  doc: group samples by population (file with "sample\tgroup") or "-" for single-sample
    calling
  type: File?
  inputBinding:
    prefix: --group-samples
- id: in_gvc_f
  doc: ',[...]          group non-variant sites into gVCF blocks by minimum per-sample
    DP'
  type: long?
  inputBinding:
    prefix: --gvcf
- id: in_insert_missed
  doc: output also sites missed by mpileup but present in -T
  type: boolean?
  inputBinding:
    prefix: --insert-missed
- id: in_keep_masked_ref
  doc: keep sites with masked reference allele (REF=N)
  type: boolean?
  inputBinding:
    prefix: --keep-masked-ref
- id: in_skip_variants
  doc: skip indels/snps
  type: string?
  inputBinding:
    prefix: --skip-variants
- id: in_variants_only
  doc: output variant sites only
  type: boolean?
  inputBinding:
    prefix: --variants-only
- id: in_consensus_caller
  doc: the original calling method (conflicts with -m)
  type: boolean?
  inputBinding:
    prefix: --consensus-caller
- id: in_constrain
  doc: 'one of: alleles, trio (see manual)'
  type: string?
  inputBinding:
    prefix: --constrain
- id: in_multi_allelic_caller
  doc: alternative model for multiallelic and rare-variant calling (conflicts with
    -c)
  type: boolean?
  inputBinding:
    prefix: --multiallelic-caller
- id: in_novel_rate
  doc: ',[...]  likelihood of novel mutation for constrained trio calling, see man
    page for details [1e-8,1e-9,1e-9]'
  type: double?
  inputBinding:
    prefix: --novel-rate
- id: in_pval_threshold
  doc: variant if P(ref|D)<FLOAT with -c [0.5]
  type: double?
  inputBinding:
    prefix: --pval-threshold
- id: in_prior
  doc: mutation rate (use bigger for greater sensitivity), use with -m [1.1e-3]
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
  doc: write output to a file [standard output]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- bcftools
- call
