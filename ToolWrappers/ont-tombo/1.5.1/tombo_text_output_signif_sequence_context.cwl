class: CommandLineTool
id: tombo_text_output_signif_sequence_context.cwl
inputs:
- id: in_file_saveload_base
  doc: File to save/load genomic base anchored statistics.
  type: File
  inputBinding:
    prefix: --statistics-filename
- id: in_genome_fast_a
  doc: "FASTA file used to re-squiggle. For faster sequence\naccess."
  type: File
  inputBinding:
    prefix: --genome-fasta
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_num_regions
  doc: 'Number of regions to plot. Default: 100'
  type: long
  inputBinding:
    prefix: --num-regions
- id: in_num_bases
  doc: 'Number of bases to plot/output. Default: 15'
  type: long
  inputBinding:
    prefix: --num-bases
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
  doc: "FAST5 subgroup(s) (under /Analyses/[--basecall-\ngroup]/) containing basecalls\
    \ and created within\n[--corrected-group] containing re-squiggle results.\nDefault:\
    \ ['BaseCalled_template']"
  type: string[]
  inputBinding:
    prefix: --basecall-subgroups
- id: in_quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_var_9
  doc: '[--genome-fasta GENOME_FASTA]'
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
- text_output
- signif_sequence_context
