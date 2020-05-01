#!/usr/bin/env cwl-runner

baseCommand:
- arcs
class: CommandLineTool
cwlVersion: v1.0
id: arcs
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: list_of_alignment_files
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: or
  inputBinding:
    position: 2
  type: string
- doc: text file listing input filenames
  id: fof_name
  inputBinding:
    prefix: --fofName
  type: File
- doc: tsv or csv file listing barcode multiplicities [optional]
  id: mult_file
  inputBinding:
    prefix: --multfile
  type: boolean
- doc: FASTA file of contig sequences to scaffold
  id: file
  inputBinding:
    prefix: --file
  type: File
- doc: min aligned read pairs per barcode mapping [5]
  id: min_reads
  inputBinding:
    prefix: --min_reads
  type: string
- doc: min shared barcodes between contigs [0]
  id: min_links
  inputBinding:
    prefix: --min_links
  type: string
- doc: min contig length [500]
  id: min_size
  inputBinding:
    prefix: --min_size
  type: string
- doc: output file prefix
  id: base_name
  inputBinding:
    prefix: --base_name
  type: string
- doc: write the ABySS dist.gv to FILE
  id: graph
  inputBinding:
    prefix: --graph
  type: File
- doc: fixed gap size for ABySS dist.gv file [100]
  id: gap
  inputBinding:
    prefix: --gap
  type: string
- doc: write graph in TSV format to FILE
  id: tsv
  inputBinding:
    prefix: --tsv
  type: File
- doc: write number of reads per barcode to FILE
  id: barcode_counts
  inputBinding:
    prefix: --barcode-counts
  type: File
- doc: barcode multiplicity range [50-10000]
  id: index_multiplicity
  inputBinding:
    prefix: --index_multiplicity
  type: string
- doc: max node degree in scaffold graph [0]
  id: max_degree
  inputBinding:
    prefix: --max_degree
  type: string
- doc: contig head/tail length for masking alignments [30000]
  id: end_length
  inputBinding:
    prefix: --end_length
  type: string
- doc: p-value for head/tail assignment and link orientation (lower is more stringent)
    [0.05]
  id: error_percent
  inputBinding:
    prefix: --error_percent
  type: string
- doc: verbose logging
  id: run_verbose
  inputBinding:
    prefix: --run_verbose
  type: boolean
- doc: min sequence identity for read alignments [98]
  id: seq_id
  inputBinding:
    prefix: --seq_id
  type: string
- doc: size of a k-mer [30]
  id: k_value
  inputBinding:
    prefix: --k_value
  type: boolean
- doc: minimum fraction of read kmers matching a contigId [0.55]
  id: j_index
  inputBinding:
    prefix: --j_index
  type: boolean
- doc: number of threads [1]
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
- doc: estimate distance using N closest Jaccard scores [20]
  id: bin_size
  inputBinding:
    prefix: --bin_size
  type: string
- doc: enable distance estimation
  id: dist_est
  inputBinding:
    prefix: --dist_est
  type: boolean
- doc: disable distance estimation [default]
  id: no_dist_est
  inputBinding:
    prefix: --no_dist_est
  type: boolean
- doc: use median distance in ABySS dist.gv [default]
  id: dist_median
  inputBinding:
    prefix: --dist_median
  type: boolean
- doc: use upper bound distance in ABySS dist.gv
  id: dist_upper
  inputBinding:
    prefix: --dist_upper
  type: boolean
- doc: write min/max distance estimates to FILE
  id: dist_tsv
  inputBinding:
    prefix: --dist_tsv
  type: File
- doc: write intra-contig distance/barcode samples to FILE
  id: samples_tsv
  inputBinding:
    prefix: --samples_tsv
  type: File
- doc: output scaffolds pairing TSV with number of barcode links (no p-value threshold)supporting
    each of the 4 possible orientation
  id: pair
  inputBinding:
    prefix: --pair
  type: boolean
