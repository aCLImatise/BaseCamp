class: CommandLineTool
id: pbsv_discover.cwl
inputs:
- id: in_sample
  doc: STR    Override sample name tag from BAM read
  type: boolean?
  inputBinding:
    prefix: --sample
- id: in_min_mapq
  doc: "INT    Ignore alignments with mapping quality\n< N. [20]"
  type: boolean?
  inputBinding:
    prefix: --min-mapq
- id: in_min_ref_span
  doc: "STR    Ignore alignments with reference\nlength < N bp. [100]"
  type: boolean?
  inputBinding:
    prefix: --min-ref-span
- id: in_min_gap_comp_id_perc
  doc: "FLOAT  Ignore alignments with gap-compressed\nsequence identity < N%. [70]"
  type: boolean?
  inputBinding:
    prefix: --min-gap-comp-id-perc
- id: in_down_sample_window_length
  doc: "STR    Window in which to limit coverage, in\nbasepairs. [10K]"
  type: boolean?
  inputBinding:
    prefix: --downsample-window-length
- id: in_down_sample_max_alignments
  doc: "INT    Consider up to N alignments in a\nwindow; 0 means disabled. [100]"
  type: boolean?
  inputBinding:
    prefix: --downsample-max-alignments
- id: in_region
  doc: "STR    Limit discovery to this reference\nregion: CHR|CHR:START-END."
  type: boolean?
  inputBinding:
    prefix: --region
- id: in_min_sv_sig_length
  doc: "STR    Ignore SV signatures with length < N\nbp. [7]"
  type: boolean?
  inputBinding:
    prefix: --min-svsig-length
- id: in_tandem_repeats
  doc: STR    Tandem repeat intervals for indel
  type: boolean?
  inputBinding:
    prefix: --tandem-repeats
- id: in_log_level
  doc: "STR    Set log level. Valid choices: (TRACE,\nDEBUG, INFO, WARN, FATAL). [WARN]"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_refdotoutdotsvsigdotgz
  doc: STR    Structural variant signatures output.
  type: string
  inputBinding:
    position: 0
- id: in_group_dot
  doc: 'Alignment Filter Options:'
  type: string
  inputBinding:
    position: 0
- id: in_clustering_dot
  doc: -k,--max-skip-split             STR    Ignore alignment pairs separated by
    >
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbsv:2.4.1--0
cwlVersion: v1.1
baseCommand:
- pbsv
- discover
