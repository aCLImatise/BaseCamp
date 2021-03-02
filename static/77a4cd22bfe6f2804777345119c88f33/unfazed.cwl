class: CommandLineTool
id: unfazed.cwl
inputs:
- id: in_dn_ms
  doc: "valid VCF OR BED file of the DNMs of interest> If BED,\nmust contain chrom,\
    \ start, end, kid_id, var_type\ncolumns (default: None)"
  type: File?
  inputBinding:
    prefix: --dnms
- id: in_sites
  doc: "sorted/bgzipped/indexed VCF/BCF file of SNVs to\nidentify informative sites.\
    \ Must contain each kid and\nboth parents (default: None)"
  type: File?
  inputBinding:
    prefix: --sites
- id: in_ped
  doc: "ped file including the kid and both parent IDs\n(default: None)"
  type: File?
  inputBinding:
    prefix: --ped
- id: in_bam_dir
  doc: "directory where bam/cram files (named {sample_id}.bam\nor {sample_id}.cram)\
    \ are stored for offspring. If not\nincluded, --bam-pairs must be set (default:\
    \ None)"
  type: Directory?
  inputBinding:
    prefix: --bam-dir
- id: in_bam_pairs
  doc: "[BAM_PAIRS [BAM_PAIRS ...]]\nspace-delimited list of pairs in the format\n\
    {sample_id}:{bam_path} where {sample_id} matches an\noffspring id from the dnm\
    \ file. Can be used with\n--bam-dir arg, must be used in its absence (default:\n\
    None)"
  type: boolean?
  inputBinding:
    prefix: --bam-pairs
- id: in_threads
  doc: 'number of threads to use (default: 2)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output_type
  doc: "choose output type. If --dnms is not a VCF/BCF, output\nmust be to BED format.\
    \ Defaults to match --dnms input\nfile (default: None)"
  type: string?
  inputBinding:
    prefix: --output-type
- id: in_include_ambiguous
  doc: 'include ambiguous phasing results (default: False)'
  type: boolean?
  inputBinding:
    prefix: --include-ambiguous
- id: in_verbose
  doc: "print verbose output including sites and reads used\nfor phasing. Only applies\
    \ to BED output (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_outfile
  doc: "name for output file. Defaults to stdout (default:\n/dev/stdout)"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_reference
  doc: "reference fasta file (required for crams) (default:\nNone)\n"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "name for output file. Defaults to stdout (default:\n/dev/stdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- unfazed
