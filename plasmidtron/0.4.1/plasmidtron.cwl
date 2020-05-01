#!/usr/bin/env cwl-runner

baseCommand:
- plasmidtron
class: CommandLineTool
cwlVersion: v1.0
id: plasmidtron
inputs:
- doc: Output directory
  id: output_directory
  inputBinding:
    position: 0
  type: string
- doc: File of filenames of trait (case) FASTQs
  id: file_of_traits
  inputBinding:
    position: 1
  type: File
- doc: File of filenames of nontrait (control) FASTQs
  id: file_of_non_traits
  inputBinding:
    position: 2
  type: File
- doc: Control how the traits kmers are filtered for assembly [union]
  id: action
  inputBinding:
    prefix: --action
  type: string
- doc: Keep intermediate files [False]
  id: keep_files
  inputBinding:
    prefix: --keep_files
  type: boolean
- doc: Kmer to use, depends on read length [51]
  id: km_er
  inputBinding:
    prefix: --kmer
  type: string
- doc: Minimum contig length in final assembly [300]
  id: min_contig_len
  inputBinding:
    prefix: --min_contig_len
  type: long
- doc: Filter out contigs with low coverage. Set to 0 to keep all. [5]
  id: min_spades_contig_coverage
  inputBinding:
    prefix: --min_spades_contig_coverage
  type: long
- doc: Filter out contigs with high coverage. Set to 0 to keep all. [500]
  id: max_spades_contig_coverage
  inputBinding:
    prefix: --max_spades_contig_coverage
  type: long
- doc: Exclude traits k-mers occurring less than this [10]
  id: min_km_ers_threshold
  inputBinding:
    prefix: --min_kmers_threshold
  type: long
- doc: Exclude traits k-mers occurring more than this [254]
  id: max_km_ers_threshold
  inputBinding:
    prefix: --max_kmers_threshold
  type: long
- doc: Exclude nontraits k-mers occurring less than this [5]
  id: min_controls_km_ers_threshold
  inputBinding:
    prefix: --min_controls_kmers_threshold
  type: long
- doc: Exclude nontraits k-mers occurring more than this [254]
  id: max_controls_km_ers_threshold
  inputBinding:
    prefix: --max_controls_kmers_threshold
  type: long
- doc: Min percentage kmer coverage of read to keep it[0.2]
  id: min_km_ers_per_read
  inputBinding:
    prefix: --min_kmers_per_read
  type: long
- doc: Match both pairs to keep them in assembly [False]
  id: match_both_pairs
  inputBinding:
    prefix: --match_both_pairs
  type: boolean
- doc: Kmer to use, depends on read length [kmerplot.png]
  id: plot_filename
  inputBinding:
    prefix: --plot_filename
  type: string
- doc: Create kmer plot [False]
  id: km_er_plot
  inputBinding:
    prefix: --kmer_plot
  type: boolean
- doc: Set the SPAdes executable [spades.py]
  id: spades_exec
  inputBinding:
    prefix: --spades_exec
  type: string
- doc: Number of threads [1]
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: Turn on debugging [0]
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
