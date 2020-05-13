class: CommandLineTool
id: iu_filter_quality_bokulich.cwl
inputs:
- id: config_file
  doc: User configuration to run. See the source code to see an example.
  type: string
  inputBinding:
    position: 0
- id: p
  doc: 'Minimal high-quality read length (default: 0.75)'
  type: double
  inputBinding:
    prefix: -p
- id: q
  doc: 'Minimum PHRED score to identify low quality bases (default: 3)'
  type: long
  inputBinding:
    prefix: -q
- id: r
  doc: 'Maximum of consecutive low-quality calls (default: 3)'
  type: long
  inputBinding:
    prefix: -r
- id: n
  doc: 'Maximum of ambiguous calls allowed (default: 0)'
  type: long
  inputBinding:
    prefix: -n
- id: ignore_def_lines
  doc: If FASTQ files are not CASAVA outputs, parsing the header info may go wrong.
    This flag tells the software to skip parsing deflines.
  type: boolean
  inputBinding:
    prefix: --ignore-deflines
- id: visualize_quality_curves
  doc: When set, mean quality score for individual bases will be stored and visualized
    for each group of reads.
  type: boolean
  inputBinding:
    prefix: --visualize-quality-curves
- id: limit_num_pairs
  doc: Put a limit to the number of pairs to analyze. For testing purposes.
  type: long
  inputBinding:
    prefix: --limit-num-pairs
- id: print_qual_scores
  doc: When set, the script will print out the Q-scores the way it sees it in the
    FASTQ file. This flag will generate a lot of useless output to the stdout, and
    you should not use it if you are not testing something.
  type: boolean
  inputBinding:
    prefix: --print-qual-scores
- id: store_read_fate
  doc: As it goes through your raw reads, this program keeps track of the read fate
    so you can learn what happened to a given read ID in your raw input data once
    the analysis is done. This output can become extremely large, and often is utterly
    useless to you unless you have a very specific benchmarking or debugging interestes,
    hence, it is not stored by default. You can change that behavior by using this
    flag, and ask illumina-utils to store this data on your disk.
  type: boolean
  inputBinding:
    prefix: --store-read-fate
outputs: []
cwlVersion: v1.1
baseCommand:
- iu-filter-quality-bokulich
