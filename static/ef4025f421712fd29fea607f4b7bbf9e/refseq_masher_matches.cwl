class: CommandLineTool
id: refseq_masher_matches.cwl
inputs:
- id: mash_bin
  doc: Mash binary path (default="mash")
  type: string
  inputBinding:
    prefix: --mash-bin
- id: output
  doc: Output file path (default="-"/stdout)
  type: File
  inputBinding:
    prefix: --output
- id: output_type
  doc: '[tab|csv]         Output file type (tab|csv)'
  type: boolean
  inputBinding:
    prefix: --output-type
- id: top_n_results
  doc: Output top N results sorted by distance in ascending order (default=5)
  type: long
  inputBinding:
    prefix: --top-n-results
- id: min_km_er_threshold
  doc: 'Mash sketch of reads: "Minimum copies of each k-mer required to pass noise
    filter for reads" (default=8)'
  type: long
  inputBinding:
    prefix: --min-kmer-threshold
- id: tmp_dir
  doc: Temporary analysis files path (where to save temp Mash sketch file) (default="/tmp")
  type: Directory
  inputBinding:
    prefix: --tmp-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- refseq_masher
- matches
