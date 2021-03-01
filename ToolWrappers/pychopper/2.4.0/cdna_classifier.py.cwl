class: CommandLineTool
id: cdna_classifier.py.cwl
inputs:
- id: in_primers_fasta
  doc: Primers fasta.
  type: string?
  inputBinding:
    prefix: -b
- id: in_file_custom_profile
  doc: File with custom profile HMMs (None).
  type: File?
  inputBinding:
    prefix: -g
- id: in_file_specify_configurations
  doc: "File to specify primer configurations for each\ndirection (None)."
  type: File?
  inputBinding:
    prefix: -c
- id: in_cutoff_parameter_autotuned
  doc: Cutoff parameter (autotuned).
  type: string?
  inputBinding:
    prefix: -q
- id: in_minimum_mean_base
  doc: Minimum mean base quality (7.0).
  type: long?
  inputBinding:
    prefix: -Q
- id: in_minimum_segment_length
  doc: Minimum segment length (50).
  type: long?
  inputBinding:
    prefix: -z
- id: in_report_pdf_cdnaclassifierreportpdf
  doc: Report PDF (cdna_classifier_report.pdf).
  type: string?
  inputBinding:
    prefix: -r
- id: in_write_unclassified_reads
  doc: Write unclassified reads to this file.
  type: File?
  inputBinding:
    prefix: -u
- id: in_write_fragments_failing
  doc: Write fragments failing the length filter in this file.
  type: long?
  inputBinding:
    prefix: -l
- id: in_write_rescued_reads
  doc: Write rescued reads to this file.
  type: File?
  inputBinding:
    prefix: -w
- id: in_write_statistics_file
  doc: Write statistics to this file.
  type: File?
  inputBinding:
    prefix: -S
- id: in_write_reads_failing
  doc: Write reads failing mean quality filter to this file.
  type: File?
  inputBinding:
    prefix: -K
- id: in_approximate_number_reads
  doc: "Approximate number of reads used for tuning the cutoff\nparameter (10000)."
  type: long?
  inputBinding:
    prefix: -Y
- id: in_number_samples_taken
  doc: "Number of samples taken when tuning cutoff parameter\n(30)."
  type: long?
  inputBinding:
    prefix: -L
- id: in_write_alignment_scores
  doc: Write alignment scores to this BED file.
  type: File?
  inputBinding:
    prefix: -A
- id: in_detection_method_phmm
  doc: 'Detection method: phmm or edlib (phmm).'
  type: string?
  inputBinding:
    prefix: -m
- id: in_read_rescue_none
  doc: 'Protocol-specific read rescue: DCS109 (None).'
  type: long?
  inputBinding:
    prefix: -x
- id: in_keep_primers_trim
  doc: Keep primers, but trim the rest.
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_number_threads_use
  doc: Number of threads to use (8).
  type: long?
  inputBinding:
    prefix: -t
- id: in_maximum_number_reads
  doc: "Maximum number of reads processed in each batch\n(1000000)."
  type: long?
  inputBinding:
    prefix: -B
- id: in_stats_tab_file
  doc: stats        Tab separated file with per-read stats (None).
  type: File?
  inputBinding:
    prefix: -D
- id: in_input_fast_x
  doc: Input file.
  type: string
  inputBinding:
    position: 0
- id: in_output_fast_x
  doc: Output file.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cdna_classifier.py
