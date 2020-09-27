class: CommandLineTool
id: motifscan_scan.cwl
inputs:
- id: in_verbose
  doc: Enable verbose log messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_genomic_regions
  doc: Input genomic regions (peaks) to be scanned.
  type: File
  inputBinding:
    prefix: -i
- id: in_format_input_file
  doc: 'Format of the input file. Default: bed'
  type: string
  inputBinding:
    prefix: -f
- id: in_motif
  doc: Motif set name to scan for.
  type: string
  inputBinding:
    prefix: --motif
- id: in_genome
  doc: Genome assembly name.
  type: string
  inputBinding:
    prefix: --genome
- id: in_p_value_cutoff
  doc: 'P value cutoff for motif scores. Default: 1e-4'
  type: string
  inputBinding:
    prefix: -p
- id: in_loc
  doc: If specified, only scan promoter or distal regions.
  type: string
  inputBinding:
    prefix: --loc
- id: in_upstream
  doc: 'TSS upstream distance for promoters. Default: 4000'
  type: long
  inputBinding:
    prefix: --upstream
- id: in_downstream
  doc: 'TSS downstream distance for promoters. Default: 2000'
  type: long
  inputBinding:
    prefix: --downstream
- id: in_window_size
  doc: "Window size for scanning. In most cases, motifs occur\nclosely around the\
    \ centers or summits of genomic\npeaks. Scanning a fixed-size window is often\n\
    sufficient to detect motif sites and unbiased for the\nenrichment analysis. If\
    \ set to 0, the whole input\nregions are included for scanning. Default: 1000"
  type: long
  inputBinding:
    prefix: --window-size
- id: in_strand
  doc: '{both,+,-}   Enable strand-specific scanning, defaults to scan both'
  type: boolean
  inputBinding:
    prefix: --strand
- id: in_no_enrich
  doc: Disable the enrichment analysis.
  type: boolean
  inputBinding:
    prefix: --no-enrich
- id: in_n_random
  doc: "Generate N random control regions for each input\nregion. Default: 5"
  type: long
  inputBinding:
    prefix: --n-random
- id: in_seed
  doc: Random seed used to generate control regions.
  type: string
  inputBinding:
    prefix: --seed
- id: in_use_control_regions
  doc: Use custom control regions for the enrichment
  type: File
  inputBinding:
    prefix: -c
- id: in_threads
  doc: Number of processes used to run in parallel.
  type: long
  inputBinding:
    prefix: --threads
- id: in_output_dir
  doc: Directory to write output files.
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: in_site
  doc: If set, report the position for each detected motif
  type: boolean
  inputBinding:
    prefix: --site
- id: in_strands_dot
  doc: 'Enrichment Analysis Options:'
  type: string
  inputBinding:
    position: 0
- id: in_analysis_dot
  doc: --cf {bed,bed3-summit,macs,macs2,narrowpeak,broadpeak,manorm}
  type: string
  inputBinding:
    position: 1
- id: in_bed
  doc: 'Threads Options:'
  type: string
  inputBinding:
    position: 0
- id: in_site_dot
  doc: --plot                If set, plot the distributions of detected motif
  type: string
  inputBinding:
    position: 0
- id: in_sites_dot
  doc: 'Examples:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory to write output files.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- motifscan
- scan
