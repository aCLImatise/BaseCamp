class: CommandLineTool
id: arcs.cwl
inputs:
- id: in_fof_name
  doc: text file listing input filenames
  type: File?
  inputBinding:
    prefix: --fofName
- id: in_mult_file
  doc: tsv or csv file listing barcode multiplicities [optional]
  type: boolean?
  inputBinding:
    prefix: --multfile
- id: in_file
  doc: FASTA file of contig sequences to scaffold
  type: File?
  inputBinding:
    prefix: --file
- id: in_min_reads
  doc: min aligned read pairs per barcode mapping [5]
  type: long?
  inputBinding:
    prefix: --min_reads
- id: in_min_links
  doc: min shared barcodes between contigs [0]
  type: long?
  inputBinding:
    prefix: --min_links
- id: in_min_size
  doc: min contig length [500]
  type: long?
  inputBinding:
    prefix: --min_size
- id: in_base_name
  doc: output file prefix
  type: File?
  inputBinding:
    prefix: --base_name
- id: in_graph
  doc: write the ABySS dist.gv to FILE
  type: File?
  inputBinding:
    prefix: --graph
- id: in_gap
  doc: fixed gap size for ABySS dist.gv file [100]
  type: long?
  inputBinding:
    prefix: --gap
- id: in_tsv
  doc: write graph in TSV format to FILE
  type: File?
  inputBinding:
    prefix: --tsv
- id: in_barcode_counts
  doc: write number of reads per barcode to FILE
  type: File?
  inputBinding:
    prefix: --barcode-counts
- id: in_index_multiplicity
  doc: barcode multiplicity range [50-10000]
  type: long?
  inputBinding:
    prefix: --index_multiplicity
- id: in_max_degree
  doc: max node degree in scaffold graph [0]
  type: long?
  inputBinding:
    prefix: --max_degree
- id: in_end_length
  doc: contig head/tail length for masking alignments [30000]
  type: long?
  inputBinding:
    prefix: --end_length
- id: in_error_percent
  doc: p-value for head/tail assignment and link orientation (lower is more stringent)
    [0.05]
  type: double?
  inputBinding:
    prefix: --error_percent
- id: in_run_verbose
  doc: verbose logging
  type: boolean?
  inputBinding:
    prefix: --run_verbose
- id: in_seq_id
  doc: min sequence identity for read alignments [98]
  type: long?
  inputBinding:
    prefix: --seq_id
- id: in_k_value
  doc: size of a k-mer [30]
  type: boolean?
  inputBinding:
    prefix: --k_value
- id: in_j_index
  doc: minimum fraction of read kmers matching a contigId [0.55]
  type: boolean?
  inputBinding:
    prefix: --j_index
- id: in_threads
  doc: number of threads [1]
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_bin_size
  doc: estimate distance using N closest Jaccard scores [20]
  type: long?
  inputBinding:
    prefix: --bin_size
- id: in_dist_est
  doc: enable distance estimation
  type: boolean?
  inputBinding:
    prefix: --dist_est
- id: in_no_dist_est
  doc: disable distance estimation [default]
  type: boolean?
  inputBinding:
    prefix: --no_dist_est
- id: in_dist_median
  doc: use median distance in ABySS dist.gv [default]
  type: boolean?
  inputBinding:
    prefix: --dist_median
- id: in_dist_upper
  doc: use upper bound distance in ABySS dist.gv
  type: boolean?
  inputBinding:
    prefix: --dist_upper
- id: in_dist_tsv
  doc: write min/max distance estimates to FILE
  type: File?
  inputBinding:
    prefix: --dist_tsv
- id: in_samples_tsv
  doc: write intra-contig distance/barcode samples to FILE
  type: File?
  inputBinding:
    prefix: --samples_tsv
- id: in_pair
  doc: output scaffolds pairing TSV with number of barcode links (no p-value threshold)supporting
    each of the 4 possible orientation
  type: boolean?
  inputBinding:
    prefix: --pair
- id: in_list_of_alignment_files
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_base_name
  doc: output file prefix
  type: File?
  outputBinding:
    glob: $(inputs.in_base_name)
hints: []
cwlVersion: v1.1
baseCommand:
- arcs
