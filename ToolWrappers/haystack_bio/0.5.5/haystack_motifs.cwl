class: CommandLineTool
id: haystack_motifs.cwl
inputs:
- id: in_motif
  doc: ANALYSIS- [Luca Pinello - lpinello@jimmy.harvard.edu]
  type: string?
  inputBinding:
    prefix: -MOTIF
- id: in_bed_bg_filename
  doc: "A bed file containing the backround coordinates on the\ngenome of reference\
    \ (default random sampled regions\nfrom the genome)"
  type: File?
  inputBinding:
    prefix: --bed_bg_filename
- id: in_meme_motifs_filename
  doc: "Motifs database in MEME format (default JASPAR CORE\n2016)"
  type: File?
  inputBinding:
    prefix: --meme_motifs_filename
- id: in_nucleotide_bg_filename
  doc: "Nucleotide probability for the background in MEME\nformat (default precomupted\
    \ on the Genome)"
  type: File?
  inputBinding:
    prefix: --nucleotide_bg_filename
- id: in_p_value
  doc: "FIMO p-value for calling a motif hit significant\n(deafult: 1e-4)"
  type: double?
  inputBinding:
    prefix: --p_value
- id: in_no_c_g_correction
  doc: Disable the matching of the C+G density of the
  type: boolean?
  inputBinding:
    prefix: --no_c_g_correction
- id: in_mask_repetitive
  doc: Mask repetitive sequences
  type: boolean?
  inputBinding:
    prefix: --mask_repetitive
- id: in_n_target_coordinates
  doc: 'Number of target coordinates to use (default: all)'
  type: long?
  inputBinding:
    prefix: --n_target_coordinates
- id: in_use_entire_bg
  doc: "Use the entire background file (use only when the cg\ncorrection is disabled)"
  type: boolean?
  inputBinding:
    prefix: --use_entire_bg
- id: in_bed_score_column
  doc: "Column in the bedfile that represents the score\n(default: 5)"
  type: long?
  inputBinding:
    prefix: --bed_score_column
- id: in_bg_target_ratio
  doc: 'Background size/Target size ratio (default: 1.0)'
  type: long?
  inputBinding:
    prefix: --bg_target_ratio
- id: in_bootstrap
  doc: "Enable the bootstrap if the target set or the\nbackground set are too small,\
    \ choices: True, False\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --bootstrap
- id: in_temp_directory
  doc: 'Directory to store temporary files (default: /tmp)'
  type: Directory?
  inputBinding:
    prefix: --temp_directory
- id: in_no_random_sampling_target
  doc: "Select the best --n_target_coordinates using the score\ncolumn from the target\
    \ file instead of randomly select\nthem"
  type: boolean?
  inputBinding:
    prefix: --no_random_sampling_target
- id: in_name
  doc: Define a custom output filename for the report
  type: File?
  inputBinding:
    prefix: --name
- id: in_internal_window_length
  doc: "Window length in bp for the enrichment (default:\naverage lenght of the target\
    \ sequences)"
  type: long?
  inputBinding:
    prefix: --internal_window_length
- id: in_window_length
  doc: "Window length in bp for the profiler\n(default:internal_window_length*5)"
  type: long?
  inputBinding:
    prefix: --window_length
- id: in_min_central_enrichment
  doc: "Minimum central enrichment to report a motif\n(default:>1.0)"
  type: long?
  inputBinding:
    prefix: --min_central_enrichment
- id: in_disable_ratio
  doc: Disable target/bg ratio filter
  type: boolean?
  inputBinding:
    prefix: --disable_ratio
- id: in_dump
  doc: "Dump all the intermediate data, choices: True, False\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --dump
- id: in_output_directory
  doc: 'Output directory (default: current directory)'
  type: Directory?
  inputBinding:
    prefix: --output_directory
- id: in_smooth_size
  doc: "Size in bp for the smoothing window (default:\ninternal_window_length/4)"
  type: long?
  inputBinding:
    prefix: --smooth_size
- id: in_gene_annotations_filename
  doc: "Optional gene annotations file from the UCSC Genome\nBrowser in bed format\
    \ to map each region to its closes\ngene"
  type: File?
  inputBinding:
    prefix: --gene_annotations_filename
- id: in_gene_ids_to_names_filename
  doc: "Optional mapping file between gene ids to gene names\n(relevant only if --gene_annotation_filename\
    \ is used)"
  type: File?
  inputBinding:
    prefix: --gene_ids_to_names_filename
- id: in_n_processes
  doc: "Specify the number of processes to use. The default is\n#cores available."
  type: long?
  inputBinding:
    prefix: --n_processes
- id: in_bed_target_filename
  doc: "A bed file containing the target coordinates on the\ngenome of reference"
  type: string
  inputBinding:
    position: 0
- id: in_genome_name
  doc: "Genome assembly to use from UCSC (for example hg19,\nmm9, etc.)"
  type: string
  inputBinding:
    position: 1
- id: in_background
  doc: --c_g_bins C_G_BINS   Number of bins for the C+G density correction
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name
  doc: Define a custom output filename for the report
  type: File?
  outputBinding:
    glob: $(inputs.in_name)
- id: out_output_directory
  doc: 'Output directory (default: current directory)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- haystack_motifs
