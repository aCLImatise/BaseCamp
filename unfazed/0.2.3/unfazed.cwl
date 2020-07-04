class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/unfazed.cwl
inputs:
- id: dn_ms
  doc: 'valid VCF OR BED file of the DNMs of interest> If BED, must contain chrom,
    start, end, kid_id, var_type columns (default: None)'
  type: string
  inputBinding:
    prefix: --dnms
- id: sites
  doc: 'sorted/bgzipped/indexed VCF/BCF file of SNVs to identify informative sites.
    Must contain each kid and both parents (default: None)'
  type: string
  inputBinding:
    prefix: --sites
- id: ped
  doc: 'ped file including the kid and both parent IDs (default: None)'
  type: string
  inputBinding:
    prefix: --ped
- id: bam_dir
  doc: 'directory where bam/cram files (named {sample_id}.bam or {sample_id}.cram)
    are stored for offspring. If not included, --bam-pairs must be set (default: None)'
  type: string
  inputBinding:
    prefix: --bam-dir
- id: bam_pairs
  doc: '[BAM_PAIRS [BAM_PAIRS ...]] space-delimited list of pairs in the format {sample_id}:{bam_path}
    where {sample_id} matches an offspring id from the dnm file. Can be used with
    --bam-dir arg, must be used in its absence (default: None)'
  type: boolean
  inputBinding:
    prefix: --bam-pairs
- id: threads
  doc: 'number of threads to use (default: 2)'
  type: string
  inputBinding:
    prefix: --threads
- id: output_type
  doc: 'choose output type. If --dnms is not a VCF/BCF, output must be to BED format.
    Defaults to match --dnms input file (default: None)'
  type: string
  inputBinding:
    prefix: --output-type
- id: include_ambiguous
  doc: 'include ambiguous phasing results (default: False)'
  type: boolean
  inputBinding:
    prefix: --include-ambiguous
- id: verbose
  doc: 'print verbose output including sites and reads used for phasing. Only applies
    to BED output (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: outfile
  doc: 'name for output file. Defaults to stdout (default: /dev/stdout)'
  type: string
  inputBinding:
    prefix: --outfile
- id: reference
  doc: 'reference fasta file (required for crams) (default: None)'
  type: string
  inputBinding:
    prefix: --reference
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- unfazed
