class: CommandLineTool
id: ../../../tombo_text_output_browser_files.cwl
inputs:
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: control_fast_five_based_irs
  doc: Set of directories containing fast5 files for control reads, containing only
    canonical nucleotides.
  type: string[]
  inputBinding:
    prefix: --control-fast5-basedirs
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
- id: motif_descriptions
  doc: 'Ground truth, motif centered, modified base descriptions for output filtering.
    Format descriptions as: "motif:mod_pos:name". The mod_pos indicates the modified
    base within the motif (1-based index). Example: CCWGG:2:dcm_5mC GATC:2:dam_6mA
    would filter output for identification of E. coli dam and dcm methylation.'
  type: string[]
  inputBinding:
    prefix: --motif-descriptions
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
- browser_files
