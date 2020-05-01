#!/usr/bin/env cwl-runner

baseCommand:
- sam-dump-orig
class: CommandLineTool
cwlVersion: v1.0
id: sam-dump-orig
inputs:
- doc: 'Output CG evidence aligned to reference '
  id: cg_evidence
  inputBinding:
    prefix: --CG-evidence
  type: boolean
- doc: "Output CG evidence DNB's aligned to evidence "
  id: cg_ev_dnb
  inputBinding:
    prefix: --CG-ev-dnb
  type: boolean
- doc: 'Output CG sequences aligned to reference  '
  id: cg_mappings
  inputBinding:
    prefix: --CG-mappings
  type: boolean
- doc: "Output CG evidence DNB's aligned to  reference  "
  id: cg_sam
  inputBinding:
    prefix: --CG-SAM
  type: boolean
- doc: 'report options instead of executing '
  id: report
  inputBinding:
    prefix: --report
  type: boolean
- doc: 'print output into this file (instead of  STDOUT) '
  id: output_file
  inputBinding:
    prefix: --output-file
  type: boolean
- doc: 'size of output-buffer(dflt:32k, 0...off) '
  id: output_buffer_size
  inputBinding:
    prefix: --output-buffer-size
  type: boolean
- doc: 'print report about mate-pair-cache '
  id: cache_report
  inputBinding:
    prefix: --cachereport
  type: boolean
- doc: 'output reads for spots with no aligned reads '
  id: unaligned_spots_only
  inputBinding:
    prefix: --unaligned-spots-only
  type: boolean
- doc: 'prints cg-style spotgroup.spotid formed  names '
  id: cg_names
  inputBinding:
    prefix: --CG-names
  type: boolean
- doc: 'open cached cursor with this size '
  id: cursor_cache
  inputBinding:
    prefix: --cursor-cache
  type: boolean
- doc: 'min. mapq an alignment has to have, to be  printed '
  id: min_mapq
  inputBinding:
    prefix: --min-mapq
  type: boolean
- doc: 'do not use mate-cache, slower but less  memory usage '
  id: no_mate_cache
  inputBinding:
    prefix: --no-mate-cache
  type: boolean
- doc: 'modify cigar-string (replace .D. with .N.)  and add output flags (XS:A:+/-)  when  rna-splicing
    is detected by match to  spliceosome recognition sites '
  id: rna_splicing
  inputBinding:
    prefix: --rna-splicing
  type: boolean
- doc: 'level of rna-splicing detection (0,1,2) when  testing for spliceosome recognition
    sites   0=perfect match, 1=one mismatch, 2=two  mismatches  one on each site '
  id: rna_splice_level
  inputBinding:
    prefix: --rna-splice-level
  type: boolean
- doc: 'file, into which rna-splice events are  written '
  id: rna_splice_log
  inputBinding:
    prefix: --rna-splice-log
  type: boolean
- doc: 'disable multithreading '
  id: disable_multithreading
  inputBinding:
    prefix: --disable-multithreading
  type: boolean
- doc: 'print MD-flag '
  id: with_md_flag
  inputBinding:
    prefix: --with-md-flag
  type: boolean
- doc: 'PATH to ngc file '
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Turn off all status messages for the  program. Negated by verbose. '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Read more options and parameters from the  file. '
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
