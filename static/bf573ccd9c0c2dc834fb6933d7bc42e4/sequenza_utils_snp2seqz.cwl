class: CommandLineTool
id: sequenza_utils_snp2seqz.cwl
inputs:
- id: in_output
  doc: "Output file. For gzip compressed output name the file\nending in .gz. Default\
    \ STDOUT"
  type: File?
  inputBinding:
    prefix: --output
- id: in_vcf
  doc: VCF input file
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_gc
  doc: The GC-content wiggle file
  type: File?
  inputBinding:
    prefix: -gc
- id: in_vcf_depth
  doc: "Column separated VCF tags in the format column for the\nread depth for the\
    \ normal and for the tumor. Default\n\"DP:DP\""
  type: string?
  inputBinding:
    prefix: --vcf-depth
- id: in_vcf_samples
  doc: "{n/t,t/n}\nOrder of the normal and tumor sample in the VCF\ncolumn, choices\
    \ are \"n/t\" or \"t/n\". Default \"n/t\""
  type: boolean?
  inputBinding:
    prefix: --vcf-samples
- id: in_vcf_alleles
  doc: "Column separated VCF tags in the format column for the\nalleles depth for\
    \ the normal and for the tumor.\nDefault \"AD:AD\""
  type: string?
  inputBinding:
    prefix: --vcf-alleles
- id: in_preset
  doc: "Preset set of options to parse VCF from popular\nvariant callers"
  type: string?
  inputBinding:
    prefix: --preset
- id: in_hom
  doc: Threshold to select homozygous positions. Default 0.9
  type: double?
  inputBinding:
    prefix: --hom
- id: in_het
  doc: Threshold to select heterozygous positions. Default
  type: string?
  inputBinding:
    prefix: --het
- id: in_tab_ix
  doc: Path of the tabix binary. Default "tabix"
  type: File?
  inputBinding:
    prefix: --tabix
- id: in_threshold_filter_positions
  doc: "Threshold to filter positions by the sum of read depth\nof the two samples.\
    \ Default 20.\n"
  type: long?
  inputBinding:
    prefix: -N
- id: in_zero_dot_two_five_dot
  doc: --het_f HET_F         Threshold of frequency in the forward strand to trust
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file. For gzip compressed output name the file\nending in .gz. Default\
    \ STDOUT"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- sequenza-utils
- snp2seqz
