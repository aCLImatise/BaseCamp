class: CommandLineTool
id: ../../../tombo_text_output_signif_sequence_context.cwl
inputs:
- id: statistics_filename
  doc: File to save/load genomic base anchored statistics.
  type: string
  inputBinding:
    prefix: --statistics-filename
- id: genome_fast_a
  doc: FASTA file used to re-squiggle. For faster sequence access.
  type: string
  inputBinding:
    prefix: --genome-fasta
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: num_regions
  doc: 'Number of regions to plot. Default: 100'
  type: string
  inputBinding:
    prefix: --num-regions
- id: num_bases
  doc: 'Number of bases to plot/output. Default: 15'
  type: string
  inputBinding:
    prefix: --num-bases
- id: sequences_filename
  doc: 'File for sequences from selected regions. Sequences will be stored in FASTA
    format. Default: tombo_results.significant_regions.fasta.'
  type: string
  inputBinding:
    prefix: --sequences-filename
- id: corrected_group
  doc: 'FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000'
  type: string
  inputBinding:
    prefix: --corrected-group
- id: base_call_subgroups
  doc: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls\
    \ and created within [--corrected-group] containing re-squiggle results. Default:\
    \ ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- tombo
- text_output
- signif_sequence_context
