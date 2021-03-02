class: CommandLineTool
id: samtools_ampliconclip.cwl
inputs:
- id: in_file_bedfile_removed
  doc: FILE            bedfile of amplicons to be removed.
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_file_output_file
  doc: FILE            output file name (default stdout).
  type: File?
  inputBinding:
    prefix: -o
- id: in_file_write_stats
  doc: FILE            write stats to file name (default stderr)
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_output_uncompressed_data
  doc: Output uncompressed data
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_soft_clip
  doc: soft clip amplicons from reads (default)
  type: boolean?
  inputBinding:
    prefix: --soft-clip
- id: in_hard_clip
  doc: hard clip amplicons from reads.
  type: boolean?
  inputBinding:
    prefix: --hard-clip
- id: in_both_ends
  doc: clip on both ends.
  type: boolean?
  inputBinding:
    prefix: --both-ends
- id: in_strand
  doc: use strand data from bed file.
  type: boolean?
  inputBinding:
    prefix: --strand
- id: in_clipped
  doc: only output clipped reads.
  type: boolean?
  inputBinding:
    prefix: --clipped
- id: in_fail
  doc: mark unclipped, mapped reads as QCFAIL.
  type: boolean?
  inputBinding:
    prefix: --fail
- id: in_filter_len
  doc: do not output reads INT size or shorter.
  type: long?
  inputBinding:
    prefix: --filter-len
- id: in_fail_len
  doc: INT    mark as QCFAIL reads INT size or shorter.
  type: boolean?
  inputBinding:
    prefix: --fail-len
- id: in_no_excluded
  doc: do not write excluded reads (unmapped or QCFAIL).
  type: boolean?
  inputBinding:
    prefix: --no-excluded
- id: in_rejects_file
  doc: file to write filtered reads.
  type: File?
  inputBinding:
    prefix: --rejects-file
- id: in_original
  doc: for clipped entries add an OA tag with original data.
  type: boolean?
  inputBinding:
    prefix: --original
- id: in_keep_tag
  doc: for clipped entries keep the old NM and MD tags.
  type: boolean?
  inputBinding:
    prefix: --keep-tag
- id: in_no_pg
  doc: do not add an @PG line.
  type: boolean?
  inputBinding:
    prefix: --no-PG
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --input-fmt-option
- id: in_output_fmt
  doc: "[,OPT[=VAL]]...\nSpecify output format (SAM, BAM, CRAM)"
  type: string?
  inputBinding:
    prefix: --output-fmt
- id: in_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --output-fmt-option
- id: in_reference
  doc: Reference sequence FASTA FILE [null]
  type: File?
  inputBinding:
    prefix: --reference
- id: in_threads
  doc: Number of additional threads to use [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbosity
  doc: "Set level of verbosity\n"
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_output_file
  doc: FILE            output file name (default stdout).
  type: File?
  outputBinding:
    glob: $(inputs.in_file_output_file)
- id: out_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fmt_option)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samtools:1.11--h6270b1f_0
cwlVersion: v1.1
baseCommand:
- samtools
- ampliconclip
