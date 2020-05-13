class: CommandLineTool
id: metagenome_pipeline.py.cwl
inputs:
- id: input
  doc: Input table of sequence abundances (BIOM, TSV, or mothur shared file format).
  type: File
  inputBinding:
    prefix: --input
- id: function
  doc: Table of predicted gene family copy numbers (output of hsp.py).
  type: File
  inputBinding:
    prefix: --function
- id: marker
  doc: Table of predicted marker gene copy numbers (output of hsp.py - typically for
    16S).
  type: File
  inputBinding:
    prefix: --marker
- id: max_nsti
  doc: 'Sequences with NSTI values above this value will be excluded (default: 2).'
  type: double
  inputBinding:
    prefix: --max_nsti
- id: min_reads
  doc: 'Minimum number of reads across all samples for each input ASV. ASVs below
    this cut-off will be counted as part of the "RARE" category in the stratified
    output (default: 1).'
  type: long
  inputBinding:
    prefix: --min_reads
- id: min_samples
  doc: 'Minimum number of samples that an ASV needs to be identfied within. ASVs below
    this cut-off will be counted as part of the "RARE" category in the stratified
    output (default: 1).'
  type: long
  inputBinding:
    prefix: --min_samples
- id: strat_out
  doc: Output table stratified by sequences as well. By default this will be in "contributional"
    format (i.e. long-format) unless the "--wide_table" option is set. The startified
    outfile is named "metagenome_contrib.tsv.gz" when in long-format.
  type: boolean
  inputBinding:
    prefix: --strat_out
- id: wide_table
  doc: Output wide-format stratified table of metagenome predictions when "--strat_out"
    is set. This is the deprecated method of generating stratified tables since it
    is extremely memory intensive. The startified outfile is named "pred_metagenome_strat.tsv.gz"
    when this option is set.
  type: boolean
  inputBinding:
    prefix: --wide_table
- id: skip_norm
  doc: Skip normalizing sequence abundances by predicted marker gene copy numbers
    (typically 16S rRNA genes). This step will be performed automatically unless this
    option is specified.
  type: boolean
  inputBinding:
    prefix: --skip_norm
- id: out_dir
  doc: 'Output directory for metagenome predictions. (default: metagenome_out).'
  type: File
  inputBinding:
    prefix: --out_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- metagenome_pipeline.py
