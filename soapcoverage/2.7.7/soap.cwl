#!/usr/bin/env cwl-runner

baseCommand:
- soap.coverage
class: CommandLineTool
cwlVersion: v1.0
id: soap.coverage
inputs:
- doc: start    end    name
  id: ref
  inputBinding:
    position: 0
  type: string
- doc: start    end    name
  id: ref
  inputBinding:
    position: 0
  type: string
- doc: Selector for sequencing coverage mode, physical coverage mode or reads tag
    mode At least and only one should be selected!
  id: cvg
  inputBinding:
    prefix: -cvg
  type: string
- doc: '[filename]   Input reference fasta file used in SOAP'
  id: ref_single
  inputBinding:
    prefix: -refsingle
  type: boolean
- doc: '[soap-file1 soap-file2 ...] Input several soap or soap gziped results by filenames.'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[soap-list]         Input several soap or soap gziped results (absolute path!)
    with a soap-list file Caution: Only PE aligned results can be used in physical
    coverage!'
  id: il
  inputBinding:
    prefix: -il
  type: boolean
- doc: '[SE aligned results list]'
  id: il_single
  inputBinding:
    prefix: -il_single
  type: boolean
- doc: '[PE aligned results list]'
  id: il_soap
  inputBinding:
    prefix: -il_soap
  type: boolean
- doc: '[file-name]          Results output with details'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[directory]      Output coverage of each bp in seperate files, a directory
    should be given'
  id: depth
  inputBinding:
    prefix: -depth
  type: boolean
- doc: '[filename] Output coverage of each bp in a single file (text, fasta like)'
  id: depth_single
  inputBinding:
    prefix: -depthsingle
  type: boolean
- doc: '[fn]    Output coverage of each bp in a single file (Binary mode)'
  id: depth_single_bin
  inputBinding:
    prefix: -depthsinglebin
  type: boolean
- doc: '[filename]        Input N block data for exclusion (marked as 65535 in depthsingle
    output) Input format: <segment_name> <start (numbering from 1)> <end (exclude
    the last)>'
  id: add_n
  inputBinding:
    prefix: -addn
  type: boolean
- doc: '[filename]  Input previous coverage data (Both Text or Binary) for faster
    accumulation'
  id: depth_input
  inputBinding:
    prefix: -depthinput
  type: boolean
- doc: '[filename]    Input specific block range for calculating coverage Input format:
    <segment_name> <start (numbering from 1)> <end (exclude the last)>'
  id: cds_input
  inputBinding:
    prefix: -cdsinput
  type: boolean
- doc: '[filename] [x-axis lower] [x-axis upper] Output overall distribution of coverage
    of all segments'
  id: plot
  inputBinding:
    prefix: -plot
  type: boolean
- doc: '[filename] [x-axis lower] [x-axis upper] Output distribution of coverage of
    specific blocks'
  id: cds_plot
  inputBinding:
    prefix: -cdsplot
  type: boolean
- doc: '[filename] Output coverage of each bp of each specific blocks in a single
    file'
  id: cds_detail
  inputBinding:
    prefix: -cdsdetail
  type: boolean
- doc: '[filename] [length] Output coverage averaged in a [length] long window to
    [filename]'
  id: window
  inputBinding:
    prefix: -window
  type: boolean
- doc: '[num]                Number of processors [Default:4]'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[num]             Exclude [num] bp(s) from head & tail of each segments'
  id: trim
  inputBinding:
    prefix: -trim
  type: boolean
- doc: Input is a three column list
  id: plain
  inputBinding:
    prefix: -plain
  type: boolean
- doc: Input is a standard SAM input file
  id: sam
  inputBinding:
    prefix: -sam
  type: boolean
- doc: Input is Blat for alculating query coverage.
  id: psl_query
  inputBinding:
    prefix: -pslquery
  type: boolean
- doc: Input is Blat for calculating subject coverage.
  id: psl_sub
  inputBinding:
    prefix: -pslsub
  type: boolean
- doc: Input is MAQ output file.
  id: maq
  inputBinding:
    prefix: -maq
  type: boolean
- doc: Input is Blast m8 file for calculating subject coverage (reference should be
    subject).
  id: m8_subject
  inputBinding:
    prefix: -m8subject
  type: boolean
- doc: Input is Blast m8 file for calculating query coverage (reference should be
    query).
  id: m8_query
  inputBinding:
    prefix: -m8query
  type: boolean
- doc: '[limit]    Input mummer result file for calculating query coverage.'
  id: mummer_query
  inputBinding:
    prefix: -mummerquery
  type: boolean
- doc: Input Blastz axt file for calculating target coverage.
  id: ax_to_it_g
  inputBinding:
    prefix: -axtoitg
  type: boolean
- doc: Input Blastz axt file for calculating query coverage.
  id: ax_to_iq
  inputBinding:
    prefix: -axtoiq
  type: boolean
- doc: '[filename_in] [filename_out] Output pair-end reads on specific areas.'
  id: pe_support
  inputBinding:
    prefix: -pesupport
  type: boolean
- doc: Use reads those are uniquely mapped (column 4 in soap == 1).
  id: only_uniq
  inputBinding:
    prefix: -onlyuniq
  type: boolean
- doc: Omit mismatched bp in soap results.
  id: precise
  inputBinding:
    prefix: -precise
  type: boolean
- doc: Cancel all possible warning.
  id: no_warning
  inputBinding:
    prefix: -nowarning
  type: boolean
- doc: Do not perform depth calculation.
  id: no_calc
  inputBinding:
    prefix: -nocalc
  type: boolean
- doc: Only output 0 or 1 for coverage calculation.
  id: only_cover
  inputBinding:
    prefix: -onlycover
  type: boolean
- doc: '[num]        Exclude duplications, and gives the percentage of duplication.
    [num]=readlength'
  id: duplicate
  inputBinding:
    prefix: -duplicate
  type: boolean
- doc: '[num]      Insert larger than num will be abandon [Default: 15000]'
  id: insert_upper
  inputBinding:
    prefix: -insertupper
  type: boolean
- doc: '[num]      Insert shorter thab num will be abandon [Default: 0]'
  id: insert_lower
  inputBinding:
    prefix: -insertlower
  type: boolean
