class: CommandLineTool
id: tombo_text_output_browser_files.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_control_fast_five_based_irs
  doc: "Set of directories containing fast5 files for control\nreads, containing only\
    \ canonical nucleotides."
  type: long[]
  inputBinding:
    prefix: --control-fast5-basedirs
- id: in_statistics_filename
  doc: File to save/load genomic base anchored statistics.
  type: File
  inputBinding:
    prefix: --statistics-filename
- id: in_genome_fast_a
  doc: "FASTA file used to re-squiggle. For faster sequence\naccess."
  type: File
  inputBinding:
    prefix: --genome-fasta
- id: in_motif_descriptions
  doc: "Ground truth, motif centered, modified base\ndescriptions for output filtering.\
    \ Format descriptions\nas: \"motif:mod_pos:name\". The mod_pos indicates the\n\
    modified base within the motif (1-based index).\nExample: CCWGG:2:dcm_5mC GATC:2:dam_6mA\
    \ would filter\noutput for identification of E. coli dam and dcm\nmethylation."
  type: string[]
  inputBinding:
    prefix: --motif-descriptions
- id: in_browser_file_basename
  doc: "Basename for output browser files. Two files (plus and\nminus strand) will\
    \ be produced for each --file-types\nsupplied. Filenames formatted as \"[browser-file-\n\
    basename].[file-\ntype].[sample|control]?.[plus|minus].[wig|bedgraph]\".\nDefault:\
    \ tombo_results"
  type: File
  inputBinding:
    prefix: --browser-file-basename
- id: in_file_types
  doc: "[{coverage,valid_coverage,fraction,dampened_fraction,signal,signal_sd,dwell,difference,statistic}\
    \ ...]\nData types of genome browser files to produce.\nProduced coverage files\
    \ are in bedGraph format, while\nall other file types will be in wiggle format\n\
    (https://genome.ucsc.edu/goldenpath/help/wiggle.html).\nDefault: \"coverage\""
  type: string
  inputBinding:
    prefix: --file-types
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_browser_file_basename
  doc: "Basename for output browser files. Two files (plus and\nminus strand) will\
    \ be produced for each --file-types\nsupplied. Filenames formatted as \"[browser-file-\n\
    basename].[file-\ntype].[sample|control]?.[plus|minus].[wig|bedgraph]\".\nDefault:\
    \ tombo_results"
  type: File
  outputBinding:
    glob: $(inputs.in_browser_file_basename)
cwlVersion: v1.1
baseCommand:
- tombo
- text_output
- browser_files
