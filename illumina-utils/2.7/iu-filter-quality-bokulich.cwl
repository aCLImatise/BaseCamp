#!/usr/bin/env cwl-runner

baseCommand:
- iu-filter-quality-bokulich
class: CommandLineTool
cwlVersion: v1.0
id: iu-filter-quality-bokulich
inputs:
- doc: User configuration to run. See the source code to see an example.
  id: config_file
  inputBinding:
    position: 0
  type: string
- doc: 'Minimal high-quality read length (default: 0.75)'
  id: p
  inputBinding:
    prefix: -p
  type: double
- doc: 'Minimum PHRED score to identify low quality bases (default: 3)'
  id: q
  inputBinding:
    prefix: -q
  type: long
- doc: 'Maximum of consecutive low-quality calls (default: 3)'
  id: r
  inputBinding:
    prefix: -r
  type: long
- doc: 'Maximum of ambiguous calls allowed (default: 0)'
  id: n
  inputBinding:
    prefix: -n
  type: long
- doc: If FASTQ files are not CASAVA outputs, parsing the header info may go wrong.
    This flag tells the software to skip parsing deflines.
  id: ignore_def_lines
  inputBinding:
    prefix: --ignore-deflines
  type: boolean
- doc: When set, mean quality score for individual bases will be stored and visualized
    for each group of reads.
  id: visualize_quality_curves
  inputBinding:
    prefix: --visualize-quality-curves
  type: boolean
- doc: Put a limit to the number of pairs to analyze. For testing purposes.
  id: limit_num_pairs
  inputBinding:
    prefix: --limit-num-pairs
  type: long
- doc: When set, the script will print out the Q-scores the way it sees it in the
    FASTQ file. This flag will generate a lot of useless output to the stdout, and
    you should not use it if you are not testing something.
  id: print_qual_scores
  inputBinding:
    prefix: --print-qual-scores
  type: boolean
- doc: As it goes through your raw reads, this program keeps track of the read fate
    so you can learn what happened to a given read ID in your raw input data once
    the analysis is done. This output can become extremely large, and often is utterly
    useless to you unless you have a very specific benchmarking or debugging interestes,
    hence, it is not stored by default. You can change that behavior by using this
    flag, and ask illumina-utils to store this data on your disk.
  id: store_read_fate
  inputBinding:
    prefix: --store-read-fate
  type: boolean
