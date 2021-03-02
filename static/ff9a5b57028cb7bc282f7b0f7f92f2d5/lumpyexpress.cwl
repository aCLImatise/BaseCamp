class: CommandLineTool
id: lumpyexpress.cwl
inputs:
- id: in_full_bam_cram
  doc: full BAM or CRAM file(s) (comma separated) (required)
  type: File?
  inputBinding:
    prefix: -B
- id: in_split_reads_comma
  doc: split reads BAM file(s) (comma separated)
  type: File?
  inputBinding:
    prefix: -S
- id: in_discordant_reads_comma
  doc: discordant reads BAM files(s) (comma separated)
  type: File?
  inputBinding:
    prefix: -D
- id: in_indexed_reference_genome
  doc: indexed reference genome fasta file (recommended for CRAMs)
  type: File?
  inputBinding:
    prefix: -R
- id: in_bedpe_file_comma
  doc: "bedpe file of depths (comma separated and prefixed by sample:)\ne.g sample_x:/path/to/sample_x.bedpe,sample_y:/path/to/sample_y.bedpe"
  type: File?
  inputBinding:
    prefix: -d
- id: in_output_file
  doc: output file [fullBam.bam.vcf]
  type: File?
  inputBinding:
    prefix: -o
- id: in_bed_file_exclude
  doc: BED file to exclude
  type: File?
  inputBinding:
    prefix: -x
- id: in_output_probability_curves
  doc: output probability curves for each variant
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_minimum_sample_weight
  doc: minimum sample weight for a call [4]
  type: long?
  inputBinding:
    prefix: -m
- id: in_trim_threshold
  doc: trim threshold [0]
  type: double?
  inputBinding:
    prefix: -r
- id: in_temp_directory
  doc: temp directory [./output_prefix.XXXXXXXXXXXX]
  type: Directory?
  inputBinding:
    prefix: -T
- id: in_keep_temporary_files
  doc: keep temporary files
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_path_lumpyexpressconfig_filedefault
  doc: "path to lumpyexpress.config file\n(default: same directory as lumpyexpress)"
  type: File?
  inputBinding:
    prefix: -K
- id: in_verbose
  doc: verbose
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output file [fullBam.bam.vcf]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- lumpyexpress
