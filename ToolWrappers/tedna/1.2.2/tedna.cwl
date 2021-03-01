class: CommandLineTool
id: tedna.cwl
inputs:
- id: in_file_one
  doc: First FASTQ file.
  type: boolean?
  inputBinding:
    prefix: --file1
- id: in_file_two
  doc: Second FASTQ file.
  type: boolean?
  inputBinding:
    prefix: --file2
- id: in_insert
  doc: Insert size.
  type: boolean?
  inputBinding:
    prefix: --insert
- id: in_km_er
  doc: K-mer size.
  type: boolean?
  inputBinding:
    prefix: --kmer
- id: in_output
  doc: Output file.
  type: File?
  inputBinding:
    prefix: --output
- id: in_threshold
  doc: 'K-mer frequency threshold   (default: ad hoc).'
  type: boolean?
  inputBinding:
    prefix: --threshold
- id: in_min_te_size
  doc: 'Minimum TE size             (default: 500).'
  type: boolean?
  inputBinding:
    prefix: --min-te-size
- id: in_max_te_size
  doc: 'Maximum TE size             (default: 30000).'
  type: boolean?
  inputBinding:
    prefix: --max-te-size
- id: in_processors
  doc: 'Number of processors        (default: 2).'
  type: boolean?
  inputBinding:
    prefix: --processors
- id: in_repeat_frequency
  doc: 'Minimum number of repetitions      (default: 2).'
  type: boolean?
  inputBinding:
    prefix: --repeat-frequency
- id: in_min_frequency
  doc: 'Minimum k-mer frequency            (default: 3).'
  type: boolean?
  inputBinding:
    prefix: --min-frequency
- id: in_frequency_dif
  doc: 'Maximum k-mer frequency difference (default: 2.5).'
  type: boolean?
  inputBinding:
    prefix: --frequency-dif
- id: in_small_graph
  doc: 'Minimum graph size                 (default: 300).'
  type: boolean?
  inputBinding:
    prefix: --small-graph
- id: in_big_graph
  doc: 'Maximum graph size                 (default: 100000).'
  type: boolean?
  inputBinding:
    prefix: --big-graph
- id: in_small_graph_count
  doc: "Stop after N small graphs          (default: 10000), 0:\nnever stop."
  type: boolean?
  inputBinding:
    prefix: --small-graph-count
- id: in_max_paths
  doc: "Maximum # paths                    (default: 100), 0:\nnever stop."
  type: boolean?
  inputBinding:
    prefix: --max-paths
- id: in_erosion
  doc: 'Erosion strength                   (default: 100).'
  type: boolean?
  inputBinding:
    prefix: --erosion
- id: in_bubble_size
  doc: 'Size of the bubbles                (default: 1000).'
  type: boolean?
  inputBinding:
    prefix: --bubble-size
- id: in_min_ltr
  doc: 'Minimum LTR size                   (default: 50).'
  type: boolean?
  inputBinding:
    prefix: --min-ltr
- id: in_max_ltr
  doc: 'Maximum LTR size                   (default: 5000).'
  type: boolean?
  inputBinding:
    prefix: --max-ltr
- id: in_duplicate_id
  doc: 'Maximum id. to remove duplicate    (default: 30%).'
  type: boolean?
  inputBinding:
    prefix: --duplicate-id
- id: in_min_overlap
  doc: 'Minimum overlap to merge TEs       (default: 20).'
  type: boolean?
  inputBinding:
    prefix: --min-overlap
- id: in_max_overlap
  doc: 'Maximum overlap to merge TEs       (default: 500).'
  type: boolean?
  inputBinding:
    prefix: --max-overlap
- id: in_short_km_er
  doc: 'Small k-mer size                   (default: 15).'
  type: boolean?
  inputBinding:
    prefix: --short-kmer
- id: in_in_del_pen
  doc: 'Indel penalty                      (default: 30).'
  type: boolean?
  inputBinding:
    prefix: --indel-pen
- id: in_mismatch_pen
  doc: 'Mismatch penalty                   (default: 10).'
  type: boolean?
  inputBinding:
    prefix: --mismatch-pen
- id: in_size_pen
  doc: 'Size penalty                       (default: 1).'
  type: boolean?
  inputBinding:
    prefix: --size-pen
- id: in_max_pen
  doc: 'Maximum penalty                    (default: 200).'
  type: boolean?
  inputBinding:
    prefix: --max-pen
- id: in_min_id
  doc: 'Minimum identity                   (default: 80).'
  type: boolean?
  inputBinding:
    prefix: --min-id
- id: in_merge_max_nb
  doc: "Maximum number of neighbor/node    (default: 10), 0: do\nnot use."
  type: boolean?
  inputBinding:
    prefix: --merge-max-nb
- id: in_min_scaffold
  doc: 'Minimum number of evidences/scaff. (default: 100).'
  type: boolean?
  inputBinding:
    prefix: --min-scaffold
- id: in_max_scaffold
  doc: 'Maximum number of evidences/scaff. (default: 10000).'
  type: boolean?
  inputBinding:
    prefix: --max-scaffold
- id: in_scaffold_max_nb
  doc: "Maximum number of neighbor/node    (default: 5), 0: do\nnot use."
  type: boolean?
  inputBinding:
    prefix: --scaffold-max-nb
- id: in_bytes_per_thread
  doc: 'Number of bytes read per thread    (default: 10000000).'
  type: boolean?
  inputBinding:
    prefix: --bytes-per-thread
- id: in_max_reads
  doc: 'Maximum number of reads read       (default: 0), 0: read'
  type: boolean?
  inputBinding:
    prefix: --max-reads
- id: in_all_dot
  doc: '--check              Check if a sequence is assembled   (default: none).'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- tedna
