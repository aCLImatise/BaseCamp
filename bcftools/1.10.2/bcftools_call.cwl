class: CommandLineTool
id: bcftools_call.cwl
inputs:
- id: in_vcf_gz
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: no_version
  doc: do not append version and command line to the header
  type: boolean
  inputBinding:
    prefix: --no-version
- id: output
  doc: write output to a file [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: output_type
  doc: "<b|u|z|v>     output type: 'b' compressed BCF; 'u' uncompressed BCF; 'z' compressed\
    \ VCF; 'v' uncompressed VCF [v]"
  type: boolean
  inputBinding:
    prefix: --output-type
- id: ploidy
  doc: "[?]      predefined ploidy, 'list' to print available settings, append '?'\
    \ for details"
  type: string
  inputBinding:
    prefix: --ploidy
- id: ploidy_file
  doc: space/tab-delimited list of CHROM,FROM,TO,SEX,PLOIDY
  type: File
  inputBinding:
    prefix: --ploidy-file
- id: regions
  doc: restrict to comma-separated list of regions
  type: string
  inputBinding:
    prefix: --regions
- id: regions_file
  doc: restrict to regions listed in a file
  type: File
  inputBinding:
    prefix: --regions-file
- id: samples
  doc: list of samples to include [all samples]
  type: string
  inputBinding:
    prefix: --samples
- id: samples_file
  doc: PED file or a file with an optional column with sex (see man page for details)
    [all samples]
  type: File
  inputBinding:
    prefix: --samples-file
- id: targets
  doc: similar to -r but streams rather than index-jumps
  type: string
  inputBinding:
    prefix: --targets
- id: targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File
  inputBinding:
    prefix: --targets-file
- id: threads
  doc: use multithreading with <int> worker threads [0]
  type: long
  inputBinding:
    prefix: --threads
- id: keep_alts
  doc: keep all possible alternate alleles at variant sites
  type: boolean
  inputBinding:
    prefix: --keep-alts
- id: format_fields
  doc: 'output format fields: GQ,GP (lowercase allowed) []'
  type: string
  inputBinding:
    prefix: --format-fields
- id: prior_freqs
  doc: <AN,AC>       use prior allele frequencies
  type: boolean
  inputBinding:
    prefix: --prior-freqs
- id: group_samples
  doc: <file|->    group samples by population (file with "sample\tgroup") or "-"
    for single-sample calling
  type: boolean
  inputBinding:
    prefix: --group-samples
- id: gvc_f
  doc: ',[...]          group non-variant sites into gVCF blocks by minimum per-sample
    DP'
  type: long
  inputBinding:
    prefix: --gvcf
- id: insert_missed
  doc: output also sites missed by mpileup but present in -T
  type: boolean
  inputBinding:
    prefix: --insert-missed
- id: keep_masked_ref
  doc: keep sites with masked reference allele (REF=N)
  type: boolean
  inputBinding:
    prefix: --keep-masked-ref
- id: skip_variants
  doc: skip indels/snps
  type: string
  inputBinding:
    prefix: --skip-variants
- id: variants_only
  doc: output variant sites only
  type: boolean
  inputBinding:
    prefix: --variants-only
- id: consensus_caller
  doc: the original calling method (conflicts with -m)
  type: boolean
  inputBinding:
    prefix: --consensus-caller
- id: constrain
  doc: 'one of: alleles, trio (see manual)'
  type: string
  inputBinding:
    prefix: --constrain
- id: multi_allelic_caller
  doc: alternative model for multiallelic and rare-variant calling (conflicts with
    -c)
  type: boolean
  inputBinding:
    prefix: --multiallelic-caller
- id: novel_rate
  doc: ',[...]  likelihood of novel mutation for constrained trio calling, see man
    page for details [1e-8,1e-9,1e-9]'
  type: double
  inputBinding:
    prefix: --novel-rate
- id: pval_threshold
  doc: variant if P(ref|D)<FLOAT with -c [0.5]
  type: double
  inputBinding:
    prefix: --pval-threshold
- id: prior
  doc: mutation rate (use bigger for greater sensitivity), use with -m [1.1e-3]
  type: double
  inputBinding:
    prefix: --prior
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- call
