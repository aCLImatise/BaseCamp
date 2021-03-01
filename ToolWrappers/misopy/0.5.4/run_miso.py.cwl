class: CommandLineTool
id: run_miso.py.cwl
inputs:
- id: in_compute_gene_psi
  doc: "Compute Psi using for a given multi-isoform gene.\nExpects four arguments:\
    \ the first is a gene ID or set\nof comma-separated (no spaces) gene IDs, the\
    \ second is\na GFF indexed file with the gene information, the\nthird is a sorted\
    \ and indexed BAM file with reads\naligned to the gene, and the fourth is an output\n\
    directory."
  type: File?
  inputBinding:
    prefix: --compute-gene-psi
- id: in_paired_end
  doc: "Run in paired-end mode.  Takes a mean and standard\ndeviation for the fragment\
    \ length distribution\n(assumed to have discretized normal form.)"
  type: long?
  inputBinding:
    prefix: --paired-end
- id: in_compute_genes_from_file
  doc: "Runs on a set of genes from a file. Takes as input:\n(1) a two-column tab-delimited\
    \ file, where column 1 is\nthe event ID (ID field from GFF) and the second column\n\
    is the path to the indexed GFF file for that event.\nMISO will run on all the\
    \ events described in the file,\n(2) a sorted, indexed BAM file to run on, and\
    \ (3) a\ndirectory to output results to."
  type: File?
  inputBinding:
    prefix: --compute-genes-from-file
- id: in_compare_samples
  doc: "Compute comparison statistics between the two given\nsamples. Expects three\
    \ directories: the first is\nsample1's MISO output, the second is sample2's MISO\n\
    output, and the third is the directory where results\nof the sample comparison\
    \ will be outputted."
  type: Directory?
  inputBinding:
    prefix: --compare-samples
- id: in_comparison_labels
  doc: "Use these labels for the sample comparison made by\n--compare-samples. Takes\
    \ two arguments: the label for\nsample 1 and the label for sample 2, where sample\
    \ 1\nand sample 2 correspond to the order of samples given\nto --compare-samples."
  type: long?
  inputBinding:
    prefix: --comparison-labels
- id: in_summarize_samples
  doc: "Compute summary statistics of the given set of\nsamples. Expects a directory\
    \ with MISO output and a\ndirectory to output summary file to."
  type: File?
  inputBinding:
    prefix: --summarize-samples
- id: in_summary_label
  doc: "Label for MISO summary file. If not given, uses\nbasename of MISO output directory."
  type: File?
  inputBinding:
    prefix: --summary-label
- id: in_use_cluster
  doc: "Size (in number of events) of each job to chunk events\nfile into. Only applies\
    \ when running on cluster."
  type: long?
  inputBinding:
    prefix: --use-cluster
- id: in_settings_filename
  doc: Filename specifying MISO settings.
  type: File?
  inputBinding:
    prefix: --settings-filename
- id: in_overhang_len
  doc: "Event type of two-isoform events (e.g. 'SE', 'RI',\n'A3SS', ...)"
  type: long?
  inputBinding:
    prefix: --overhang-len
- id: in_use_compressed
  doc: "Use compressed event IDs. Takes as input a\ngenes_to_filenames.shelve file\
    \ produced by the\nindex_gff script."
  type: File?
  inputBinding:
    prefix: --use-compressed
- id: in_view_gene
  doc: "View the contents of a gene/event that has been\nindexed. Takes as input an\
    \ indexed (.pickle) filename.\n"
  type: File?
  inputBinding:
    prefix: --view-gene
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_compute_gene_psi
  doc: "Compute Psi using for a given multi-isoform gene.\nExpects four arguments:\
    \ the first is a gene ID or set\nof comma-separated (no spaces) gene IDs, the\
    \ second is\na GFF indexed file with the gene information, the\nthird is a sorted\
    \ and indexed BAM file with reads\naligned to the gene, and the fourth is an output\n\
    directory."
  type: File?
  outputBinding:
    glob: $(inputs.in_compute_gene_psi)
- id: out_compare_samples
  doc: "Compute comparison statistics between the two given\nsamples. Expects three\
    \ directories: the first is\nsample1's MISO output, the second is sample2's MISO\n\
    output, and the third is the directory where results\nof the sample comparison\
    \ will be outputted."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_compare_samples)
- id: out_summarize_samples
  doc: "Compute summary statistics of the given set of\nsamples. Expects a directory\
    \ with MISO output and a\ndirectory to output summary file to."
  type: File?
  outputBinding:
    glob: $(inputs.in_summarize_samples)
- id: out_summary_label
  doc: "Label for MISO summary file. If not given, uses\nbasename of MISO output directory."
  type: File?
  outputBinding:
    glob: $(inputs.in_summary_label)
hints: []
cwlVersion: v1.1
baseCommand:
- run_miso.py
