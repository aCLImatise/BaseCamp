class: CommandLineTool
id: pycoQC.cwl
inputs:
- id: verbose
  doc: Increase verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Reduce verbosity
  type: boolean
  inputBinding:
    prefix: --quiet
- id: summary_file
  doc: '[SUMMARY_FILE [SUMMARY_FILE ...]], -f [SUMMARY_FILE [SUMMARY_FILE ...]] Path
    to a sequencing_summary generated by Albacore 1.0.0 + (read_fast5_basecaller.py)
    / Guppy 2.1.3+ (guppy_basecaller). One can also pass multiple space separated
    file paths or a UNIX style regex matching multiple files (Required)'
  type: boolean
  inputBinding:
    prefix: --summary_file
- id: barcode_file
  doc: '[BARCODE_FILE [BARCODE_FILE ...]], -b [BARCODE_FILE [BARCODE_FILE ...]] Path
    to the barcode_file generated by Guppy 2.1.3+ (guppy_barcoder) or Deepbinner 0.2.0+.
    This is not a required file. One can also pass multiple space separated file paths
    or a UNIX style regex matching multiple files (optional)'
  type: boolean
  inputBinding:
    prefix: --barcode_file
- id: bam_file
  doc: '[BAM_FILE [BAM_FILE ...]], -a [BAM_FILE [BAM_FILE ...]] Path to a Bam file
    corresponding to reads in the summary_file. Preferably aligned with Minimap2 One
    can also pass multiple space separated file paths or a UNIX style regex matching
    multiple files (optional)'
  type: boolean
  inputBinding:
    prefix: --bam_file
- id: html_outfile
  doc: Path to an output html file report (required if json_outfile not given)
  type: string
  inputBinding:
    prefix: --html_outfile
- id: json_outfile
  doc: Path to an output json file report (required if html_outfile not given)
  type: string
  inputBinding:
    prefix: --json_outfile
- id: min_pass_qual
  doc: "Minimum quality to consider a read as 'pass' (default: 7)"
  type: long
  inputBinding:
    prefix: --min_pass_qual
- id: min_pass_len
  doc: "Minimum read length to consider a read as 'pass' (default: 0)"
  type: long
  inputBinding:
    prefix: --min_pass_len
- id: filter_calibration
  doc: 'If given, reads flagged as calibration strand by the basecaller are removed
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --filter_calibration
- id: filter_duplicated
  doc: 'If given, duplicated read_ids are removed but the first occurence is kept
    (Guppy sometimes outputs the same read multiple times) (default: False)'
  type: boolean
  inputBinding:
    prefix: --filter_duplicated
- id: min_barcode_percent
  doc: 'Minimal percent of total reads to retain barcode label. If below, the barcode
    value is set as `unclassified` (default: 0.1)'
  type: long
  inputBinding:
    prefix: --min_barcode_percent
- id: report_title
  doc: 'Title to use in the html report (default: PycoQC report)'
  type: string
  inputBinding:
    prefix: --report_title
- id: template_file
  doc: 'Jinja2 html template for the html report (default: )'
  type: string
  inputBinding:
    prefix: --template_file
- id: config_file
  doc: "Path to a JSON configuration file for the html report. If not provided, looks\
    \ for it in ~/.pycoQC and ~/.config/pycoQC/config. If it's still not found, falls\
    \ back to default parameters. The first level keys are the names of the plots\
    \ to be included. The second level keys are the parameters to pass to each plotting\
    \ function (default: )\")"
  type: string
  inputBinding:
    prefix: --config_file
- id: sample
  doc: 'If not None a n number of reads will be randomly selected instead of the entire
    dataset for ploting function (deterministic sampling) (default: 100000)'
  type: string
  inputBinding:
    prefix: --sample
- id: default_config
  doc: 'Print default configuration file. Can be used to generate a template JSON
    file (default: False)'
  type: boolean
  inputBinding:
    prefix: --default_config
outputs: []
cwlVersion: v1.1
baseCommand:
- pycoQC
