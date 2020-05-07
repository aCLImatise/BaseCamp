class: CommandLineTool
id: compare_taxa_summaries.py.cwl
inputs:
- id: tax_a_summary_fps
  doc: the two input taxa summary filepaths, comma-separated. These will usually be
    the files that are output by summarize_taxa.py. These taxa summary files do not
    need to have the same taxa in the same order, as the script will make them compatible
    before comparing them [REQUIRED]
  type: string
  inputBinding:
    prefix: --taxa_summary_fps
- id: output_dir
  doc: path to the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
- id: comparison_mode
  doc: 'the type of comparison to perform. Valid choices: paired or expected. "paired"
    will compare each sample in the taxa summary files that match based on sample
    ID, or that match given a sample ID map (see the --sample_id_map_fp option for
    more information). "expected" will compare each sample in the first taxa summary
    file to an expected sample (contained in the second taxa summary file). If "expected",
    the second taxa summary file must contain only a single sample that all other
    samples will be compared to (unless the --expected_sample_id option is provided)
    [REQUIRED]'
  type: string
  inputBinding:
    prefix: --comparison_mode
outputs: []
cwlVersion: v1.1
baseCommand:
- compare_taxa_summaries.py
