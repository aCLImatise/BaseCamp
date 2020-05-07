class: CommandLineTool
id: gemBS_extract.cwl
inputs:
- id: jobs
  doc: Number of parallel jobs
  type: string
  inputBinding:
    prefix: --jobs
- id: sample_name
  doc: Name of sample to be filtered
  type: string
  inputBinding:
    prefix: --sample-name
- id: barcode
  doc: Barcode of sample to be filtered
  type: string
  inputBinding:
    prefix: --barcode
- id: strand_specific
  doc: Output separate lines for each strand.
  type: boolean
  inputBinding:
    prefix: --strand-specific
- id: phred_threshold
  doc: Min threshold for genotype phred score.
  type: string
  inputBinding:
    prefix: --phred-threshold
- id: min_inform
  doc: Min threshold for informative reads.
  type: string
  inputBinding:
    prefix: --min-inform
- id: min_nc
  doc: Min threshold for non-converted reads for non CpG sites.
  type: long
  inputBinding:
    prefix: --min-nc
- id: allow_het
  doc: Allow both heterozygous and homozgyous sites.
  type: boolean
  inputBinding:
    prefix: --allow-het
- id: reference_bias
  doc: Allow both heterozygous and homozgyous sites.
  type: string
  inputBinding:
    prefix: --reference-bias
- id: cpg
  doc: Output gemBS bed with cpg sites.
  type: boolean
  inputBinding:
    prefix: --cpg
- id: non_cpg
  doc: Output gemBS bed with non-cpg sites.
  type: boolean
  inputBinding:
    prefix: --non-cpg
- id: bed_methyl
  doc: Output bedMethyl files (bed and bigBed)
  type: boolean
  inputBinding:
    prefix: --bed-methyl
- id: bigwig
  doc: Output bigWig file
  type: boolean
  inputBinding:
    prefix: --bigwig
- id: snps
  doc: Output SNPs
  type: boolean
  inputBinding:
    prefix: --snps
- id: snp_list
  doc: List of SNPs to output
  type: string
  inputBinding:
    prefix: --snp-list
- id: snp_db
  doc: dbSNP_idx processed SNP idx
  type: string
  inputBinding:
    prefix: --snp-db
- id: dry_run
  doc: Output mapping commands without execution
  type: boolean
  inputBinding:
    prefix: --dry-run
- id: json
  doc: FILE      Output JSON file with details of pending commands
  type: string
  inputBinding:
    prefix: --json
- id: ignore_db
  doc: Ignore database for --dry-run and --json commands
  type: boolean
  inputBinding:
    prefix: --ignore-db
- id: ignore_dep
  doc: Ignore dependencies for --dry-run and --json commands
  type: boolean
  inputBinding:
    prefix: --ignore-dep
outputs: []
cwlVersion: v1.1
baseCommand:
- gemBS
- extract
