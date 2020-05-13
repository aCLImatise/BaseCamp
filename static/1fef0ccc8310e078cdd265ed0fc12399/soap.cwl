class: CommandLineTool
id: soap.coverage.cwl
inputs:
- id: ref
  doc: start    end    name
  type: string
  inputBinding:
    position: 0
- id: ref
  doc: start    end    name
  type: string
  inputBinding:
    position: 0
- id: cvg
  doc: Selector for sequencing coverage mode, physical coverage mode or reads tag
    mode At least and only one should be selected!
  type: string
  inputBinding:
    prefix: -cvg
- id: ref_single
  doc: '[filename]   Input reference fasta file used in SOAP'
  type: boolean
  inputBinding:
    prefix: -refsingle
- id: i
  doc: '[soap-file1 soap-file2 ...] Input several soap or soap gziped results by filenames.'
  type: boolean
  inputBinding:
    prefix: -i
- id: il
  doc: '[soap-list]         Input several soap or soap gziped results (absolute path!)
    with a soap-list file Caution: Only PE aligned results can be used in physical
    coverage!'
  type: boolean
  inputBinding:
    prefix: -il
- id: il_single
  doc: '[SE aligned results list]'
  type: boolean
  inputBinding:
    prefix: -il_single
- id: il_soap
  doc: '[PE aligned results list]'
  type: boolean
  inputBinding:
    prefix: -il_soap
- id: o
  doc: '[file-name]          Results output with details'
  type: boolean
  inputBinding:
    prefix: -o
- id: depth
  doc: '[directory]      Output coverage of each bp in seperate files, a directory
    should be given'
  type: boolean
  inputBinding:
    prefix: -depth
- id: depth_single
  doc: '[filename] Output coverage of each bp in a single file (text, fasta like)'
  type: boolean
  inputBinding:
    prefix: -depthsingle
- id: depth_single_bin
  doc: '[fn]    Output coverage of each bp in a single file (Binary mode)'
  type: boolean
  inputBinding:
    prefix: -depthsinglebin
- id: add_n
  doc: '[filename]        Input N block data for exclusion (marked as 65535 in depthsingle
    output) Input format: <segment_name> <start (numbering from 1)> <end (exclude
    the last)>'
  type: boolean
  inputBinding:
    prefix: -addn
- id: depth_input
  doc: '[filename]  Input previous coverage data (Both Text or Binary) for faster
    accumulation'
  type: boolean
  inputBinding:
    prefix: -depthinput
- id: cds_input
  doc: '[filename]    Input specific block range for calculating coverage Input format:
    <segment_name> <start (numbering from 1)> <end (exclude the last)>'
  type: boolean
  inputBinding:
    prefix: -cdsinput
- id: plot
  doc: '[filename] [x-axis lower] [x-axis upper] Output overall distribution of coverage
    of all segments'
  type: boolean
  inputBinding:
    prefix: -plot
- id: cds_plot
  doc: '[filename] [x-axis lower] [x-axis upper] Output distribution of coverage of
    specific blocks'
  type: boolean
  inputBinding:
    prefix: -cdsplot
- id: cds_detail
  doc: '[filename] Output coverage of each bp of each specific blocks in a single
    file'
  type: boolean
  inputBinding:
    prefix: -cdsdetail
- id: window
  doc: '[filename] [length] Output coverage averaged in a [length] long window to
    [filename]'
  type: boolean
  inputBinding:
    prefix: -window
- id: p
  doc: '[num]                Number of processors [Default:4]'
  type: boolean
  inputBinding:
    prefix: -p
- id: trim
  doc: '[num]             Exclude [num] bp(s) from head & tail of each segments'
  type: boolean
  inputBinding:
    prefix: -trim
- id: plain
  doc: Input is a three column list
  type: boolean
  inputBinding:
    prefix: -plain
- id: sam
  doc: Input is a standard SAM input file
  type: boolean
  inputBinding:
    prefix: -sam
- id: psl_query
  doc: Input is Blat for alculating query coverage.
  type: boolean
  inputBinding:
    prefix: -pslquery
- id: psl_sub
  doc: Input is Blat for calculating subject coverage.
  type: boolean
  inputBinding:
    prefix: -pslsub
- id: maq
  doc: Input is MAQ output file.
  type: boolean
  inputBinding:
    prefix: -maq
- id: m8_subject
  doc: Input is Blast m8 file for calculating subject coverage (reference should be
    subject).
  type: boolean
  inputBinding:
    prefix: -m8subject
- id: m8_query
  doc: Input is Blast m8 file for calculating query coverage (reference should be
    query).
  type: boolean
  inputBinding:
    prefix: -m8query
- id: mummer_query
  doc: '[limit]    Input mummer result file for calculating query coverage.'
  type: boolean
  inputBinding:
    prefix: -mummerquery
- id: ax_to_it_g
  doc: Input Blastz axt file for calculating target coverage.
  type: boolean
  inputBinding:
    prefix: -axtoitg
- id: ax_to_iq
  doc: Input Blastz axt file for calculating query coverage.
  type: boolean
  inputBinding:
    prefix: -axtoiq
- id: pe_support
  doc: '[filename_in] [filename_out] Output pair-end reads on specific areas.'
  type: boolean
  inputBinding:
    prefix: -pesupport
- id: only_uniq
  doc: Use reads those are uniquely mapped (column 4 in soap == 1).
  type: boolean
  inputBinding:
    prefix: -onlyuniq
- id: precise
  doc: Omit mismatched bp in soap results.
  type: boolean
  inputBinding:
    prefix: -precise
- id: no_warning
  doc: Cancel all possible warning.
  type: boolean
  inputBinding:
    prefix: -nowarning
- id: no_calc
  doc: Do not perform depth calculation.
  type: boolean
  inputBinding:
    prefix: -nocalc
- id: only_cover
  doc: Only output 0 or 1 for coverage calculation.
  type: boolean
  inputBinding:
    prefix: -onlycover
- id: duplicate
  doc: '[num]        Exclude duplications, and gives the percentage of duplication.
    [num]=readlength'
  type: boolean
  inputBinding:
    prefix: -duplicate
- id: insert_upper
  doc: '[num]      Insert larger than num will be abandon [Default: 15000]'
  type: boolean
  inputBinding:
    prefix: -insertupper
- id: insert_lower
  doc: '[num]      Insert shorter thab num will be abandon [Default: 0]'
  type: boolean
  inputBinding:
    prefix: -insertlower
outputs: []
cwlVersion: v1.1
baseCommand:
- soap.coverage
