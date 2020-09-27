class: CommandLineTool
id: utrrnaseq.cwl
inputs:
- id: in_long
  doc: -short option   data type       description
  type: string
  inputBinding:
    prefix: --long
- id: in_in_scaffold_file
  doc: -G              s               scaffold file in FASTA-format. Required.
  type: boolean
  inputBinding:
    prefix: --in-scaffold-file
- id: in_in_coding_region_file
  doc: -C              s               file with start and stop features in GTF/GFF
    format. Required.
  type: boolean
  inputBinding:
    prefix: --in-coding-region-file
- id: in_in_intron_file
  doc: -I              s               intron file in GTF/GFF format. Required.
  type: boolean
  inputBinding:
    prefix: --in-intron-file
- id: in_in_wiggle_file
  doc: -W              s               wiggle file in WIG-format. Required.
  type: boolean
  inputBinding:
    prefix: --in-wiggle-file
- id: in_in_repeat_file
  doc: -R              s               repeat file in GTF/GFF format.
  type: boolean
  inputBinding:
    prefix: --in-repeat-file
- id: in_out_file_name
  doc: "-o              s               output filename. Optional. Default Value:\
    \ 'UTRs.gff'"
  type: File
  inputBinding:
    prefix: --out-file-name
- id: in_smoothing_window_size
  doc: '-w              i               smoothing window size. Optional. Default Value:
    150'
  type: boolean
  inputBinding:
    prefix: --smoothing-window-size
- id: in_read_length
  doc: '-r              i               read length of RNA-Seq data. Optional. Default
    Value: 150'
  type: boolean
  inputBinding:
    prefix: --read-length
- id: in_limit
  doc: '-l              i               maximal distance from computation start. Optional.
    Default Value: 5000'
  type: boolean
  inputBinding:
    prefix: --limit
- id: in_drop_window_size
  doc: '-v              i               window size after UTR end. Optional. Default
    Value: 50'
  type: boolean
  inputBinding:
    prefix: --drop-window-size
- id: in_minimum_length
  doc: '-n              i               minimal UTR length. Optional. Default Value:
    2'
  type: boolean
  inputBinding:
    prefix: --minimum-length
- id: in_minimum_average_coverage
  doc: '-c              i               minimal average UTR coverage. Optional. Default
    Value: 10'
  type: boolean
  inputBinding:
    prefix: --minimum-average-coverage
- id: in_percent_window
  doc: '-p              d               percentage of window coverage after UTR. Optional.
    Default Value: 0.6'
  type: boolean
  inputBinding:
    prefix: --percent-window
- id: in_percent_intron
  doc: '-i              d               percentage of coverage in introns. Optional.
    Default Value: 0.5'
  type: boolean
  inputBinding:
    prefix: --percent-intron
- id: in_percent_multiplicity
  doc: '-m              d               percentage of multiplicity of introns. Optional.
    Default Value: 0.1'
  type: boolean
  inputBinding:
    prefix: --percent-multiplicity
- id: in_splices_sites
  doc: "-s              s               accepted splice sites. If 'all' is chosen,\
    \ no splice site filtering is done.Optional. Default Value: GT_AG"
  type: boolean
  inputBinding:
    prefix: --splices-sites
- id: in_zero_coverage
  doc: '-z              none            Determination of UTRs based on zero coverage.
    Optional. Default Value: false'
  type: boolean
  inputBinding:
    prefix: --zero-coverage
- id: in_format_examples
  doc: '-f              none            Only print format examples of input files.
    Optional. Default Value: false'
  type: boolean
  inputBinding:
    prefix: --format-examples
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file_name
  doc: "-o              s               output filename. Optional. Default Value:\
    \ 'UTRs.gff'"
  type: File
  outputBinding:
    glob: $(inputs.in_out_file_name)
cwlVersion: v1.1
baseCommand:
- utrrnaseq
