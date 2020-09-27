class: CommandLineTool
id: bam2fastx.cwl
inputs:
- id: in_all
  doc: "convert all reads (mapped and unmapped)\n(but discarding those flagged as\
    \ QC failed, unless -Q)"
  type: boolean
  inputBinding:
    prefix: --all
- id: in_paired_reads_expected
  doc: "paired reads are expected and converted into two output\nfiles (see <outfname>\
    \ comments below)"
  type: boolean
  inputBinding:
    prefix: -P
- id: in_convert_unmapped_reads
  doc: convert unmapped reads even when flagged as QC failed
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_map_ed_only
  doc: convert only mapped reads
  type: boolean
  inputBinding:
    prefix: --maped-only
- id: in_p_append_suffixes
  doc: for -P, append  /1 and /2 suffixes to read names
  type: boolean
  inputBinding:
    prefix: -N
- id: in_ignore_quality_values
  doc: "ignore the original quality values (OQ tag) and write the\ncurrent quality\
    \ values (default is to use OQ data if found)"
  type: boolean
  inputBinding:
    prefix: -O
- id: in_color
  doc: reads are in ABI SOLiD color format
  type: boolean
  inputBinding:
    prefix: --color
- id: in_sam
  doc: 'input is a SAM text file (default: BAM input expected)'
  type: boolean
  inputBinding:
    prefix: --sam
- id: in_fast_a
  doc: output FASTA records, not FASTQ (discard quality values)
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_output_file_name
  doc: output file name or template (see below)
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name or template (see below)
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
cwlVersion: v1.1
baseCommand:
- bam2fastx
