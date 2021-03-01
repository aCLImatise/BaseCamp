class: CommandLineTool
id: mmseqs_createindex.cwl
inputs:
- id: in_kmer_size_range
  doc: '0               k-mer size in the range [6,7] (0: set automatically to optimum)'
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_alph_size
  doc: 21              alphabet size [2,21]
  type: boolean?
  inputBinding:
    prefix: --alph-size
- id: in_mask
  doc: '1               0: w/o low complexity masking, 1: with low complexity masking,
    2: add both masked and unmasked sequences to index'
  type: boolean?
  inputBinding:
    prefix: --mask
- id: in_spaced_km_er_mode
  doc: '1               0: use consecutive positions a k-mers; 1: use spaced k-mers'
  type: boolean?
  inputBinding:
    prefix: --spaced-kmer-mode
- id: in_sensitivity_faster_fast
  doc: '7.500           sensitivity: 1.0 faster; 4.0 fast default; 7.5 sensitive [1.0,7.5]'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_k_score
  doc: 0               k-mer threshold for generating similar-k-mer lists
  type: boolean?
  inputBinding:
    prefix: --k-score
- id: in_split
  doc: 0               Splits input sets into N equally distributed chunks. The default
    value sets the best split automatically. createindex can only be used with split
    1.
  type: boolean?
  inputBinding:
    prefix: --split
- id: in_split_memory_limit
  doc: 0               Maximum system memory in megabyte that one split may use. Defaults
    (0) to all available system memory.
  type: boolean?
  inputBinding:
    prefix: --split-memory-limit
- id: in_include_headers
  doc: false           Include the header index into the index
  type: boolean?
  inputBinding:
    prefix: --include-headers
- id: in_min_length
  doc: 30              minimum codon number in open reading frames
  type: boolean?
  inputBinding:
    prefix: --min-length
- id: in_max_length
  doc: 98202           maximum codon number in open reading frames
  type: boolean?
  inputBinding:
    prefix: --max-length
- id: in_max_gaps
  doc: 2147483647      maximum number of codons with gaps or unknown residues before
    an open reading frame is rejected
  type: boolean?
  inputBinding:
    prefix: --max-gaps
- id: in_contig_start_mode
  doc: '2               Contig start can be 0: incomplete, 1: complete, 2: both'
  type: boolean?
  inputBinding:
    prefix: --contig-start-mode
- id: in_contig_end_mode
  doc: '2               Contig end can be 0: incomplete, 1: complete, 2: both'
  type: boolean?
  inputBinding:
    prefix: --contig-end-mode
- id: in_orf_start_mode
  doc: '0               Orf fragment can be 0: from start to stop, 1: from any to
    stop, 2: from last encountered start to stop (no start in the middle)'
  type: boolean?
  inputBinding:
    prefix: --orf-start-mode
- id: in_forward_frames
  doc: 1,2,3           comma-seperated list of ORF frames on the forward strand to
    be extracted
  type: boolean?
  inputBinding:
    prefix: --forward-frames
- id: in_reverse_frames
  doc: 1,2,3           comma-seperated list of ORF frames on the reverse strand to
    be extracted
  type: boolean?
  inputBinding:
    prefix: --reverse-frames
- id: in_translation_table
  doc: 1               1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL,
    4) MOLD_MITOCHONDRIAL, 5) INVERT_MITOCHONDRIAL, 6) CILIATE, 9) FLATWORM_MITOCHONDRIAL,
    10) EUPLOTID, 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL,
    15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL,
    22) SCENEDESMUS_MITOCHONDRIAL, 23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL,
    25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA, 29) MESODINIUM,
    30) PERTRICH, 31) BLASTOCRITHIDIA
  type: boolean?
  inputBinding:
    prefix: --translation-table
- id: in_use_all_table_starts
  doc: false           use all alteratives for a start codon in the genetic table,
    if false - only ATG (AUG)
  type: boolean?
  inputBinding:
    prefix: --use-all-table-starts
- id: in_id_offset
  doc: 0               numeric ids in index file are offset by this value
  type: boolean?
  inputBinding:
    prefix: --id-offset
- id: in_add_orf_stop
  doc: false           add * at complete start and end
  type: boolean?
  inputBinding:
    prefix: --add-orf-stop
- id: in_sub_mat
  doc: blosum62.out    amino acid substitution matrix file
  type: File?
  inputBinding:
    prefix: --sub-mat
- id: in_max_seqs
  doc: 300             maximum result sequences per query (this parameter affects
    the sensitivity)
  type: boolean?
  inputBinding:
    prefix: --max-seqs
- id: in_max_seq_len
  doc: 65535           Maximum sequence length [1,32768]
  type: boolean?
  inputBinding:
    prefix: --max-seq-len
- id: in_threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_nothing
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_sub_mat
  doc: blosum62.out    amino acid substitution matrix file
  type: File?
  outputBinding:
    glob: $(inputs.in_sub_mat)
hints: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- createindex
