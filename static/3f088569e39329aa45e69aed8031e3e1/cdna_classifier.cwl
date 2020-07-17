class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cdna_classifier.py.cwl
inputs:
- id: primers_fasta
  doc: Primers fasta.
  type: string
  inputBinding:
    prefix: -b
- id: file_hmms_none
  doc: File with custom profile HMMs (None).
  type: string
  inputBinding:
    prefix: -g
- id: file_specify_configurations
  doc: File to specify primer configurations for each direction (None).
  type: string
  inputBinding:
    prefix: -c
- id: cutoff_parameter_autotuned
  doc: Cutoff parameter (autotuned).
  type: string
  inputBinding:
    prefix: -q
- id: minimum_mean_base
  doc: Minimum mean base quality (7.0).
  type: long
  inputBinding:
    prefix: -Q
- id: minimum_segment_length
  doc: Minimum segment length (50).
  type: long
  inputBinding:
    prefix: -z
- id: report_pdf_cdnaclassifierreportpdf
  doc: Report PDF (cdna_classifier_report.pdf).
  type: string
  inputBinding:
    prefix: -r
- id: write_unclassified_reads
  doc: Write unclassified reads to this file.
  type: string
  inputBinding:
    prefix: -u
- id: write_fragments_failing
  doc: Write fragments failing the length filter in this file.
  type: string
  inputBinding:
    prefix: -l
- id: write_rescued_reads
  doc: Write rescued reads to this file.
  type: string
  inputBinding:
    prefix: -w
- id: write_statistics_file
  doc: Write statistics to this file.
  type: string
  inputBinding:
    prefix: -S
- id: write_reads_filter
  doc: Write reads failing mean quality filter to this file.
  type: string
  inputBinding:
    prefix: -K
- id: approximate_number_reads
  doc: Approximate number of reads used for tuning the cutoff parameter (10000).
  type: string
  inputBinding:
    prefix: -Y
- id: number_samples_taken
  doc: Number of samples taken when tuning cutoff parameter (30).
  type: string
  inputBinding:
    prefix: -L
- id: write_alignment_scores
  doc: Write alignment scores to this BED file.
  type: string
  inputBinding:
    prefix: -A
- id: detection_method_phmm
  doc: 'Detection method: phmm or edlib (phmm).'
  type: string
  inputBinding:
    prefix: -m
- id: protocolspecific_read_rescue
  doc: 'Protocol-specific read rescue: DCS109 (None).'
  type: string
  inputBinding:
    prefix: -x
- id: keep_primers_trim
  doc: Keep primers, but trim the rest.
  type: boolean
  inputBinding:
    prefix: -p
- id: number_threads_use
  doc: Number of threads to use (8).
  type: string
  inputBinding:
    prefix: -t
- id: maximum_number_reads
  doc: Maximum number of reads processed in each batch (1000000).
  type: string
  inputBinding:
    prefix: -B
- id: stats_tab_separated
  doc: stats        Tab separated file with per-read stats (None).
  type: string
  inputBinding:
    prefix: -D
- id: input_fast_x
  doc: Input file.
  type: string
  inputBinding:
    position: 0
- id: output_fast_x
  doc: Output file.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- cdna_classifier.py
