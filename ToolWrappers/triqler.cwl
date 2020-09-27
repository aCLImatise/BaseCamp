class: CommandLineTool
id: triqler.cwl
inputs:
- id: in_out_file
  doc: "Path to output file (writing in TSV format). N.B. if\nmore than 2 treatment\
    \ groups are present, suffixes\nwill be added before the file extension. (default:\n\
    proteins.tsv)"
  type: File
  inputBinding:
    prefix: --out_file
- id: in_fold_change_eval
  doc: 'log2 fold change evaluation threshold. (default: 1.0)'
  type: double
  inputBinding:
    prefix: --fold_change_eval
- id: in_decoy_pattern
  doc: 'Prefix for decoy proteins. (default: decoy_)'
  type: string
  inputBinding:
    prefix: --decoy_pattern
- id: in_min_samples
  doc: "Minimum number of samples a peptide needed to be\nquantified in. (default:\
    \ 2)"
  type: long
  inputBinding:
    prefix: --min_samples
- id: in_num_threads
  doc: "Number of threads, by default this is equal to the\nnumber of CPU cores available\
    \ on the device. (default:\n8)"
  type: long
  inputBinding:
    prefix: --num_threads
- id: in_t_test
  doc: "Use t-test for evaluating differential expression\ninstead of posterior probabilities.\
    \ (default: False)"
  type: boolean
  inputBinding:
    prefix: --ttest
- id: in_write_spectrum_quants
  doc: "Write quantifications for consensus spectra. Only\nworks if consensus spectrum\
    \ index are given in input.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --write_spectrum_quants
- id: in_write_protein_posteriors
  doc: "Write raw data of protein posteriors to the specified\nfile in TSV format.\
    \ (default: )"
  type: File
  inputBinding:
    prefix: --write_protein_posteriors
- id: in_write_group_posteriors
  doc: "Write raw data of treatment group posteriors to the\nspecified file in TSV\
    \ format. (default: )"
  type: File
  inputBinding:
    prefix: --write_group_posteriors
- id: in_write_fold_change_posteriors
  doc: "Write raw data of fold change posteriors to the\nspecified file in TSV format.\
    \ (default: )\n"
  type: File
  inputBinding:
    prefix: --write_fold_change_posteriors
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: "Path to output file (writing in TSV format). N.B. if\nmore than 2 treatment\
    \ groups are present, suffixes\nwill be added before the file extension. (default:\n\
    proteins.tsv)"
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- triqler
