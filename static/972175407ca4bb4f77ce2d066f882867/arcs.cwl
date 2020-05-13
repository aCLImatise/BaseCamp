class: CommandLineTool
id: arcs.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: list_of_alignment_files
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: or
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: fof_name
  doc: text file listing input filenames
  type: File
  inputBinding:
    prefix: --fofName
- id: mult_file
  doc: tsv or csv file listing barcode multiplicities [optional]
  type: boolean
  inputBinding:
    prefix: --multfile
- id: file
  doc: FASTA file of contig sequences to scaffold
  type: File
  inputBinding:
    prefix: --file
- id: min_reads
  doc: min aligned read pairs per barcode mapping [5]
  type: string
  inputBinding:
    prefix: --min_reads
- id: min_links
  doc: min shared barcodes between contigs [0]
  type: string
  inputBinding:
    prefix: --min_links
- id: min_size
  doc: min contig length [500]
  type: string
  inputBinding:
    prefix: --min_size
- id: base_name
  doc: output file prefix
  type: string
  inputBinding:
    prefix: --base_name
- id: graph
  doc: write the ABySS dist.gv to FILE
  type: File
  inputBinding:
    prefix: --graph
- id: gap
  doc: fixed gap size for ABySS dist.gv file [100]
  type: string
  inputBinding:
    prefix: --gap
- id: tsv
  doc: write graph in TSV format to FILE
  type: File
  inputBinding:
    prefix: --tsv
- id: barcode_counts
  doc: write number of reads per barcode to FILE
  type: File
  inputBinding:
    prefix: --barcode-counts
- id: index_multiplicity
  doc: barcode multiplicity range [50-10000]
  type: string
  inputBinding:
    prefix: --index_multiplicity
- id: max_degree
  doc: max node degree in scaffold graph [0]
  type: string
  inputBinding:
    prefix: --max_degree
- id: end_length
  doc: contig head/tail length for masking alignments [30000]
  type: string
  inputBinding:
    prefix: --end_length
- id: error_percent
  doc: p-value for head/tail assignment and link orientation (lower is more stringent)
    [0.05]
  type: string
  inputBinding:
    prefix: --error_percent
- id: run_verbose
  doc: verbose logging
  type: boolean
  inputBinding:
    prefix: --run_verbose
- id: seq_id
  doc: min sequence identity for read alignments [98]
  type: string
  inputBinding:
    prefix: --seq_id
- id: k_value
  doc: size of a k-mer [30]
  type: boolean
  inputBinding:
    prefix: --k_value
- id: j_index
  doc: minimum fraction of read kmers matching a contigId [0.55]
  type: boolean
  inputBinding:
    prefix: --j_index
- id: threads
  doc: number of threads [1]
  type: boolean
  inputBinding:
    prefix: --threads
- id: bin_size
  doc: estimate distance using N closest Jaccard scores [20]
  type: string
  inputBinding:
    prefix: --bin_size
- id: dist_est
  doc: enable distance estimation
  type: boolean
  inputBinding:
    prefix: --dist_est
- id: no_dist_est
  doc: disable distance estimation [default]
  type: boolean
  inputBinding:
    prefix: --no_dist_est
- id: dist_median
  doc: use median distance in ABySS dist.gv [default]
  type: boolean
  inputBinding:
    prefix: --dist_median
- id: dist_upper
  doc: use upper bound distance in ABySS dist.gv
  type: boolean
  inputBinding:
    prefix: --dist_upper
- id: dist_tsv
  doc: write min/max distance estimates to FILE
  type: File
  inputBinding:
    prefix: --dist_tsv
- id: samples_tsv
  doc: write intra-contig distance/barcode samples to FILE
  type: File
  inputBinding:
    prefix: --samples_tsv
- id: pair
  doc: output scaffolds pairing TSV with number of barcode links (no p-value threshold)supporting
    each of the 4 possible orientation
  type: boolean
  inputBinding:
    prefix: --pair
outputs: []
cwlVersion: v1.1
baseCommand:
- arcs
