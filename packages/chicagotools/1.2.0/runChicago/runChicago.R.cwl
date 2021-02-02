class: CommandLineTool
id: runChicago.R.cwl
inputs:
- id: in_print_memory
  doc: Should chicagoPipeline print out memory use?
  type: boolean
  inputBinding:
    prefix: --print-memory
- id: in_rda
  doc: Save the Chicago object as an RDa image (instead of the default RDS)
  type: boolean
  inputBinding:
    prefix: --rda
- id: in_save_df_only
  doc: Save only the data part of the Chicago object, as a data frame (for compatibility)
  type: boolean
  inputBinding:
    prefix: --save-df-only
- id: in_examples_full_range
  doc: Also plot examples for the full distance range
  type: boolean
  inputBinding:
    prefix: --examples-full-range
- id: in_en_full_cis_range
  doc: Assess the enrichment for features for the full distance range [same chromosome
    only; use --en-trans in addition to include trans-interactions] (can be very slow!)
  type: boolean
  inputBinding:
    prefix: --en-full-cis-range
- id: in_en_trans
  doc: Include trans-interactions into enrichment analysis
  type: boolean
  inputBinding:
    prefix: --en-trans
- id: in_features_only
  doc: Re-run feature enrichment analysis with Chicago output files. With this option,
    <input-files> must be either a single Rds file (must contain full Chicago objects)
    or '-', in which case the file location will be inferred automatically from <output-prefix>
    and files added to the corresponding folder.
  type: boolean
  inputBinding:
    prefix: --features-only
- id: in_opts
  doc: RDS file containing argument values
  type: File
  inputBinding:
    prefix: --opts
- id: in_settings_file
  doc: Full path to Chicago settings file
  type: File
  inputBinding:
    prefix: --settings-file
- id: in_design_dir
  doc: 'Folder with capture design files (note the settings file has priority over
    these) [default: ]'
  type: File
  inputBinding:
    prefix: --design-dir
- id: in_cut_off
  doc: 'Score cutoff for writing out peaks and testing feature enrichment [default:
    5]'
  type: long
  inputBinding:
    prefix: --cutoff
- id: in_export_format
  doc: 'File format for writing out peaks: one or more of the following: seqMonk,interBed,washU_text,washU_track
    (comma-separated) [default: washU_text]'
  type: File
  inputBinding:
    prefix: --export-format
- id: in_export_order
  doc: 'Should the results be ordered by "score" or genomic "position"? [default:
    position]'
  type: string
  inputBinding:
    prefix: --export-order
- id: in_examples_prox_dist
  doc: 'The distance limit for plotting "proximal" examples [default: 1e+06]'
  type: double
  inputBinding:
    prefix: --examples-prox-dist
- id: in_output_dir
  doc: 'The name of the output directory (can be a full path) [default: <output-prefix>]'
  type: File
  inputBinding:
    prefix: --output-dir
- id: in_en_feat_files
  doc: A comma-separated list of files with genomic feature coordinates for computing
    peaks' enrichment
  type: string
  inputBinding:
    prefix: --en-feat-files
- id: in_en_feat_list
  doc: "Same as above but the supplied file contains the feature names and\nlocations\
    \ of feature files (in the format <feature-name> <feature-file-location>"
  type: File
  inputBinding:
    prefix: --en-feat-list
- id: in_en_feat_folder
  doc: The folder, in which all feature files are located (if provided, --en-feature-file(s)
    don't need to list the full path)
  type: Directory
  inputBinding:
    prefix: --en-feat-folder
- id: in_en_min_dist
  doc: 'The lower distance limit for computing enrichment for features [default: 0]'
  type: long
  inputBinding:
    prefix: --en-min-dist
- id: in_en_max_dist
  doc: 'The upper distance limit for computing enrichment for features [default: 1e+06]'
  type: long
  inputBinding:
    prefix: --en-max-dist
- id: in_en_sample_no
  doc: 'The number of negative samples for computing enrichment for features [default:
    100]'
  type: long
  inputBinding:
    prefix: --en-sample-no
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_export_format
  doc: 'File format for writing out peaks: one or more of the following: seqMonk,interBed,washU_text,washU_track
    (comma-separated) [default: washU_text]'
  type: File
  outputBinding:
    glob: $(inputs.in_export_format)
- id: out_output_dir
  doc: 'The name of the output directory (can be a full path) [default: <output-prefix>]'
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- runChicago.R
