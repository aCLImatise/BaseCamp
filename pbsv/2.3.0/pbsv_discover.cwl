class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pbsv_discover.cwl
inputs:
- id: sample
  doc: STR   Override sample name tag from BAM read group.
  type: boolean
  inputBinding:
    prefix: --sample
- id: min_mapq
  doc: INT   Ignore alignments with mapping quality < N. [20]
  type: boolean
  inputBinding:
    prefix: --min-mapq
- id: min_ref_span
  doc: STR   Ignore alignments with reference length < N bp. [100]
  type: boolean
  inputBinding:
    prefix: --min-ref-span
- id: down_sample_window_length
  doc: STR   Window in which to limit coverage, in basepairs. [10K]
  type: boolean
  inputBinding:
    prefix: --downsample-window-length
- id: down_sample_max_alignments
  doc: INT   Consider up to N alignments in a window; 0 means disabled. [20]
  type: boolean
  inputBinding:
    prefix: --downsample-max-alignments
- id: region
  doc: 'STR   Limit discovery to this reference region: CHR|CHR:START-END.'
  type: boolean
  inputBinding:
    prefix: --region
- id: min_sv_sig_length
  doc: STR   Ignore SV signatures with length < N bp. [7]
  type: boolean
  inputBinding:
    prefix: --min-svsig-length
- id: tandem_repeats
  doc: STR   Tandem repeat intervals for indel clustering.
  type: boolean
  inputBinding:
    prefix: --tandem-repeats
- id: max_skip_split
  doc: STR   Ignore alignment pairs separated by > N bp of a read or reference. [100]
  type: boolean
  inputBinding:
    prefix: --max-skip-split
- id: log_level
  doc: 'STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: FILE  Log to a file, instead of stderr.
  type: boolean
  inputBinding:
    prefix: --log-file
- id: refdotoutdotsvsigdotgz
  doc: STR   Structural variant signatures output.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pbsv
- discover
