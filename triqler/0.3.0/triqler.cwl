class: CommandLineTool
id: triqler.cwl
inputs:
- id: in_file
  doc: List of PSMs with abundances (not log transformed!) and search engine score.
    See README for a detailed description of the columns.
  type: string
  inputBinding:
    position: 0
- id: out_file
  doc: 'Path to output file (writing in TSV format). N.B. if more than 2 treatment
    groups are present, suffixes will be added before the file extension. (default:
    proteins.tsv)'
  type: string
  inputBinding:
    prefix: --out_file
- id: fold_change_eval
  doc: 'log2 fold change evaluation threshold. (default: 1.0)'
  type: string
  inputBinding:
    prefix: --fold_change_eval
- id: decoy_pattern
  doc: 'Prefix for decoy proteins. (default: decoy_)'
  type: string
  inputBinding:
    prefix: --decoy_pattern
- id: min_samples
  doc: 'Minimum number of samples a peptide needed to be quantified in. (default:
    2)'
  type: string
  inputBinding:
    prefix: --min_samples
- id: num_threads
  doc: 'Number of threads, by default this is equal to the number of CPU cores available
    on the device. (default: 8)'
  type: string
  inputBinding:
    prefix: --num_threads
- id: t_test
  doc: 'Use t-test for evaluating differential expression instead of posterior probabilities.
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --ttest
- id: write_spectrum_quants
  doc: 'Write quantifications for consensus spectra. Only works if consensus spectrum
    index are given in input. (default: False)'
  type: boolean
  inputBinding:
    prefix: --write_spectrum_quants
- id: write_protein_posteriors
  doc: 'Write raw data of protein posteriors to the specified file in TSV format.
    (default: )'
  type: string
  inputBinding:
    prefix: --write_protein_posteriors
- id: write_group_posteriors
  doc: 'Write raw data of treatment group posteriors to the specified file in TSV
    format. (default: )'
  type: string
  inputBinding:
    prefix: --write_group_posteriors
- id: write_fold_change_posteriors
  doc: 'Write raw data of fold change posteriors to the specified file in TSV format.
    (default: )'
  type: string
  inputBinding:
    prefix: --write_fold_change_posteriors
outputs: []
cwlVersion: v1.1
baseCommand:
- triqler
