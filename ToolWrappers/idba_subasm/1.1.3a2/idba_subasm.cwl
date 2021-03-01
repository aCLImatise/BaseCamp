class: CommandLineTool
id: idba_subasm.cwl
inputs:
- id: in_out
  doc: (=out)                   output directory
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_read
  doc: fasta read file (<=512)
  type: File?
  inputBinding:
    prefix: --read
- id: in_read_level_two
  doc: paired-end reads fasta for second level scaffolds
  type: long?
  inputBinding:
    prefix: --read_level_2
- id: in_read_level_three
  doc: paired-end reads fasta for third level scaffolds
  type: long?
  inputBinding:
    prefix: --read_level_3
- id: in_read_level_four
  doc: paired-end reads fasta for fourth level scaffolds
  type: long?
  inputBinding:
    prefix: --read_level_4
- id: in_read_level_five
  doc: paired-end reads fasta for fifth level scaffolds
  type: long?
  inputBinding:
    prefix: --read_level_5
- id: in_long_read
  doc: fasta long read file (>512)
  type: File?
  inputBinding:
    prefix: --long_read
- id: in_mink
  doc: (=20)                   minimum k value (<=124)
  type: long?
  inputBinding:
    prefix: --mink
- id: in_max_k
  doc: (=100)                  maximum k value (<=124)
  type: long?
  inputBinding:
    prefix: --maxk
- id: in_step
  doc: (=20)                   increment of k-mer of each iteration
  type: long?
  inputBinding:
    prefix: --step
- id: in_inner_mink
  doc: (=10)             inner minimum k value
  type: long?
  inputBinding:
    prefix: --inner_mink
- id: in_inner_step
  doc: (=5)              inner increment of k-mer
  type: long?
  inputBinding:
    prefix: --inner_step
- id: in_prefix
  doc: (=3)                  prefix length used to build sub k-mer table
  type: long?
  inputBinding:
    prefix: --prefix
- id: in_min_count
  doc: (=2)               minimum multiplicity for filtering k-mer when building the
    graph
  type: long?
  inputBinding:
    prefix: --min_count
- id: in_min_support
  doc: (=1)             minimum supoort in each iteration
  type: long?
  inputBinding:
    prefix: --min_support
- id: in_num_threads
  doc: (=0)             number of threads
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_seed_km_er
  doc: (=30)              seed kmer size for alignment
  type: long?
  inputBinding:
    prefix: --seed_kmer
- id: in_min_contig
  doc: (=200)            minimum size of contig
  type: long?
  inputBinding:
    prefix: --min_contig
- id: in_similar
  doc: (=0.95)              similarity for alignment
  type: double?
  inputBinding:
    prefix: --similar
- id: in_max_mismatch
  doc: (=3)            max mismatch of error correction
  type: long?
  inputBinding:
    prefix: --max_mismatch
- id: in_min_pairs
  doc: (=3)               minimum number of pairs
  type: long?
  inputBinding:
    prefix: --min_pairs
- id: in_no_bubble
  doc: do not merge bubble
  type: boolean?
  inputBinding:
    prefix: --no_bubble
- id: in_no_local
  doc: do not use local assembly
  type: boolean?
  inputBinding:
    prefix: --no_local
- id: in_no_coverage
  doc: do not iterate on coverage
  type: boolean?
  inputBinding:
    prefix: --no_coverage
- id: in_no_correct
  doc: do not do correction
  type: boolean?
  inputBinding:
    prefix: --no_correct
- id: in_pre_correction
  doc: perform pre-correction before assembly
  type: boolean?
  inputBinding:
    prefix: --pre_correction
- id: in_seed_contig
  doc: fasta seed contig file
  type: File?
  inputBinding:
    prefix: --seed_contig
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: (=out)                   output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- idba_subasm
