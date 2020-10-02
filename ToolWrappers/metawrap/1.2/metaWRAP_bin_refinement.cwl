class: CommandLineTool
id: metaWRAP_bin_refinement.cwl
inputs:
- id: in_output_directory
  doc: output directory
  type: Directory
  inputBinding:
    prefix: -o
- id: in_number_threads_default
  doc: number of threads (default=1)
  type: long
  inputBinding:
    prefix: -t
- id: in_memory_available_default
  doc: memory available (default=40)
  type: long
  inputBinding:
    prefix: -m
- id: in_minimum_completion_default
  doc: minimum % completion of bins [should be >50%] (default=70)
  type: long
  inputBinding:
    prefix: -c
- id: in_maximum_contamination_bins
  doc: maximum % contamination of bins that is acceptable (default=10)
  type: long
  inputBinding:
    prefix: -x
- id: in_folder_metagenomic_bins_files
  doc: folder with metagenomic bins (files must have .fa or .fasta extension)
  type: Directory
  inputBinding:
    prefix: -A
- id: in_b
  doc: another folder with metagenomic bins
  type: Directory
  inputBinding:
    prefix: -B
- id: in_var_7
  doc: another folder with metagenomic bins
  type: Directory
  inputBinding:
    prefix: -C
- id: in_skip_refinement
  doc: dont use binning_refiner to come up with refined bins based on combinations
    of binner outputs
  type: boolean
  inputBinding:
    prefix: --skip-refinement
- id: in_skip_check_m
  doc: dont run CheckM to assess bins
  type: boolean
  inputBinding:
    prefix: --skip-checkm
- id: in_skip_consolidation
  doc: choose the best version of each bin from all bin refinement iteration
  type: boolean
  inputBinding:
    prefix: --skip-consolidation
- id: in_keep_ambiguous
  doc: 'for contigs that end up in more than one bin, keep them in all bins (default:
    keeps them only in the best bin)'
  type: boolean
  inputBinding:
    prefix: --keep-ambiguous
- id: in_remove_ambiguous
  doc: 'for contigs that end up in more than one bin, remove them in all bins (default:
    keeps them only in the best bin)'
  type: boolean
  inputBinding:
    prefix: --remove-ambiguous
- id: in_quick
  doc: adds --reduced_tree option to checkm, reducing runtime, especially with low
    memory
  type: boolean
  inputBinding:
    prefix: --quick
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- metaWRAP
- bin_refinement
