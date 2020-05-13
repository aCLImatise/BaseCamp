class: CommandLineTool
id: sam_dump_orig.2.10.3.cwl
inputs:
- id: cg_evidence
  doc: 'Output CG evidence aligned to reference '
  type: boolean
  inputBinding:
    prefix: --CG-evidence
- id: cg_ev_dnb
  doc: "Output CG evidence DNB's aligned to evidence "
  type: boolean
  inputBinding:
    prefix: --CG-ev-dnb
- id: cg_mappings
  doc: 'Output CG sequences aligned to reference  '
  type: boolean
  inputBinding:
    prefix: --CG-mappings
- id: cg_sam
  doc: "Output CG evidence DNB's aligned to  reference  "
  type: boolean
  inputBinding:
    prefix: --CG-SAM
- id: report
  doc: 'report options instead of executing '
  type: boolean
  inputBinding:
    prefix: --report
- id: output_file
  doc: 'print output into this file (instead of  STDOUT) '
  type: boolean
  inputBinding:
    prefix: --output-file
- id: output_buffer_size
  doc: 'size of output-buffer(dflt:32k, 0...off) '
  type: boolean
  inputBinding:
    prefix: --output-buffer-size
- id: cache_report
  doc: 'print report about mate-pair-cache '
  type: boolean
  inputBinding:
    prefix: --cachereport
- id: unaligned_spots_only
  doc: 'output reads for spots with no aligned reads '
  type: boolean
  inputBinding:
    prefix: --unaligned-spots-only
- id: cg_names
  doc: 'prints cg-style spotgroup.spotid formed  names '
  type: boolean
  inputBinding:
    prefix: --CG-names
- id: cursor_cache
  doc: 'open cached cursor with this size '
  type: boolean
  inputBinding:
    prefix: --cursor-cache
- id: min_mapq
  doc: 'min. mapq an alignment has to have, to be  printed '
  type: boolean
  inputBinding:
    prefix: --min-mapq
- id: no_mate_cache
  doc: 'do not use mate-cache, slower but less  memory usage '
  type: boolean
  inputBinding:
    prefix: --no-mate-cache
- id: rna_splicing
  doc: 'modify cigar-string (replace .D. with .N.)  and add output flags (XS:A:+/-)  when  rna-splicing
    is detected by match to  spliceosome recognition sites '
  type: boolean
  inputBinding:
    prefix: --rna-splicing
- id: rna_splice_level
  doc: 'level of rna-splicing detection (0,1,2) when  testing for spliceosome recognition
    sites   0=perfect match, 1=one mismatch, 2=two  mismatches  one on each site '
  type: boolean
  inputBinding:
    prefix: --rna-splice-level
- id: rna_splice_log
  doc: 'file, into which rna-splice events are  written '
  type: boolean
  inputBinding:
    prefix: --rna-splice-log
- id: disable_multithreading
  doc: 'disable multithreading '
  type: boolean
  inputBinding:
    prefix: --disable-multithreading
- id: with_md_flag
  doc: 'print MD-flag '
  type: boolean
  inputBinding:
    prefix: --with-md-flag
- id: ngc
  doc: 'PATH to ngc file '
  type: File
  inputBinding:
    prefix: --ngc
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- sam-dump-orig.2.10.3
