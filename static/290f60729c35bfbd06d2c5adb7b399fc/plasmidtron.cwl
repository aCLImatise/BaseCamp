class: CommandLineTool
id: plasmidtron.cwl
inputs:
- id: in_action
  doc: "Control how the traits kmers are filtered for assembly\n[union]"
  type: string
  inputBinding:
    prefix: --action
- id: in_keep_files
  doc: Keep intermediate files [False]
  type: boolean
  inputBinding:
    prefix: --keep_files
- id: in_km_er
  doc: Kmer to use, depends on read length [51]
  type: long
  inputBinding:
    prefix: --kmer
- id: in_min_contig_len
  doc: Minimum contig length in final assembly [300]
  type: long
  inputBinding:
    prefix: --min_contig_len
- id: in_min_spades_contig_coverage
  doc: "Filter out contigs with low coverage. Set to 0 to keep\nall. [5]"
  type: long
  inputBinding:
    prefix: --min_spades_contig_coverage
- id: in_max_spades_contig_coverage
  doc: "Filter out contigs with high coverage. Set to 0 to\nkeep all. [500]"
  type: long
  inputBinding:
    prefix: --max_spades_contig_coverage
- id: in_min_km_ers_threshold
  doc: Exclude traits k-mers occurring less than this [10]
  type: long
  inputBinding:
    prefix: --min_kmers_threshold
- id: in_max_km_ers_threshold
  doc: Exclude traits k-mers occurring more than this [254]
  type: long
  inputBinding:
    prefix: --max_kmers_threshold
- id: in_min_controls_km_ers_threshold
  doc: Exclude nontraits k-mers occurring less than this [5]
  type: long
  inputBinding:
    prefix: --min_controls_kmers_threshold
- id: in_max_controls_km_ers_threshold
  doc: "Exclude nontraits k-mers occurring more than this\n[254]"
  type: long
  inputBinding:
    prefix: --max_controls_kmers_threshold
- id: in_min_km_ers_per_read
  doc: Min percentage kmer coverage of read to keep it[0.2]
  type: long
  inputBinding:
    prefix: --min_kmers_per_read
- id: in_match_both_pairs
  doc: Match both pairs to keep them in assembly [False]
  type: boolean
  inputBinding:
    prefix: --match_both_pairs
- id: in_plot_filename
  doc: Kmer to use, depends on read length [kmerplot.png]
  type: File
  inputBinding:
    prefix: --plot_filename
- id: in_km_er_plot
  doc: Create kmer plot [False]
  type: boolean
  inputBinding:
    prefix: --kmer_plot
- id: in_spades_exec
  doc: Set the SPAdes executable [spades.py]
  type: string
  inputBinding:
    prefix: --spades_exec
- id: in_threads
  doc: Number of threads [1]
  type: long
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: Turn on debugging [0]
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_output_directory
  doc: Output directory
  type: string
  inputBinding:
    position: 0
- id: in_file_of_traits
  doc: File of filenames of trait (case) FASTQs
  type: string
  inputBinding:
    position: 1
- id: in_file_of_non_traits
  doc: File of filenames of nontrait (control) FASTQs
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- plasmidtron
