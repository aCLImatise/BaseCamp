class: CommandLineTool
id: tombo_write_most_significant_fasta.cwl
inputs:
- id: in_file_saveload_base
  doc: File to save/load base by base statistics.
  type: File
  inputBinding:
    prefix: --statistics-filename
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_genome_fast_a
  doc: "FASTA file used to re-squiggle. For faster sequence\naccess."
  type: File
  inputBinding:
    prefix: --genome-fasta
- id: in_statistic_order
  doc: "Order selected locations by p-values or mean\nlikelihood ratio. Default: fraction\
    \ of significant\nreads."
  type: boolean
  inputBinding:
    prefix: --statistic-order
- id: in_num_regions
  doc: 'Number of regions to plot. Default: 100'
  type: long
  inputBinding:
    prefix: --num-regions
- id: in_num_bases
  doc: 'Number of bases to plot/output. Default: 21'
  type: long
  inputBinding:
    prefix: --num-bases
- id: in_q_value_threshold
  doc: "Plot all regions below provied q-value. Overrides\n--num-regions."
  type: long
  inputBinding:
    prefix: --q-value-threshold
- id: in_sequences_filename
  doc: "File for sequences from selected regions. Sequences\nwill be stored in FASTA\
    \ format. Default:\ntombo_results.significant_regions.fasta."
  type: File
  inputBinding:
    prefix: --sequences-filename
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long
  inputBinding:
    prefix: --corrected-group
- id: in_base_call_subgroups
  doc: "FAST5 subgroup(s) (under Analyses/[corrected-group])\ncontaining basecalls.\
    \ Default: ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_var_11
  doc: '[--fast5-basedirs FAST5_BASEDIRS [FAST5_BASEDIRS ...]]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tombo
- write_most_significant_fasta
