class: CommandLineTool
id: mmseqs_createlinindex.cwl
inputs:
- id: in_seed_sub_mat
  doc: Substitution matrix file for k-mer generation [nucl:nucleotide.out,aa:blosum62.out]
  type: File?
  inputBinding:
    prefix: --seed-sub-mat
- id: in_kmer_length_set
  doc: 'k-mer length (0: automatically set to optimum) [0]'
  type: long?
  inputBinding:
    prefix: -k
- id: in_split_memory_limit
  doc: Set max memory per split. E.g. 800B, 5K, 10M, 1G. Default (0) to all available
    system memory [0]
  type: long?
  inputBinding:
    prefix: --split-memory-limit
- id: in_alph_size
  doc: Alphabet size (range 2-21) [nucl:5,aa:21]
  type: long?
  inputBinding:
    prefix: --alph-size
- id: in_mask
  doc: 'Mask sequences in k-mer stage: 0: w/o low complexity masking, 1: with low
    complexity masking [0]'
  type: long?
  inputBinding:
    prefix: --mask
- id: in_mask_lower_case
  doc: 'Lowercase letters will be excluded from k-mer search 0: include region, 1:
    exclude region [0]'
  type: long?
  inputBinding:
    prefix: --mask-lower-case
- id: in_spaced_km_er_mode
  doc: '0: use consecutive positions in k-mers; 1: use spaced k-mers [0]'
  type: long?
  inputBinding:
    prefix: --spaced-kmer-mode
- id: in_spaced_km_er_pattern
  doc: User-specified spaced k-mer pattern []
  type: string?
  inputBinding:
    prefix: --spaced-kmer-pattern
- id: in_min_seq_id
  doc: List matches above this sequence identity (for clustering) (range 0.0-1.0)
    [0.000]
  type: double?
  inputBinding:
    prefix: --min-seq-id
- id: in_hash_shift
  doc: Shift k-mer hash initialization [67]
  type: long?
  inputBinding:
    prefix: --hash-shift
- id: in_km_er_per_seq
  doc: k-mers per sequence [21]
  type: long?
  inputBinding:
    prefix: --kmer-per-seq
- id: in_km_er_per_seq_scale
  doc: Scale k-mer per sequence based on sequence length as kmer-per-seq val + scale
    x seqlen [nucl:0.200,aa:0.000]
  type: long?
  inputBinding:
    prefix: --kmer-per-seq-scale
- id: in_adjust_km_er_len
  doc: Adjust k-mer length based on specificity (only for nucleotides) [0]
  type: boolean?
  inputBinding:
    prefix: --adjust-kmer-len
- id: in_ignore_multi_km_er
  doc: Skip k-mers occurring multiple times (>=2) [0]
  type: boolean?
  inputBinding:
    prefix: --ignore-multi-kmer
- id: in_check_compatible
  doc: '0: Always recreate index, 1: Check if recreating index is needed, 2: Fail
    if index is incompatible [0]'
  type: long?
  inputBinding:
    prefix: --check-compatible
- id: in_search_type
  doc: 'Search type 0: auto 1: amino acid, 2: translated, 3: nucleotide, 4: translated
    nucleotide alignment [0]'
  type: long?
  inputBinding:
    prefix: --search-type
- id: in_min_length
  doc: Minimum codon number in open reading frames [30]
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_max_length
  doc: Maximum codon number in open reading frames [32734]
  type: long?
  inputBinding:
    prefix: --max-length
- id: in_max_gaps
  doc: Maximum number of codons with gaps or unknown residues before an open reading
    frame is rejected [2147483647]
  type: long?
  inputBinding:
    prefix: --max-gaps
- id: in_contig_start_mode
  doc: 'Contig start can be 0: incomplete, 1: complete, 2: both [2]'
  type: long?
  inputBinding:
    prefix: --contig-start-mode
- id: in_contig_end_mode
  doc: 'Contig end can be 0: incomplete, 1: complete, 2: both [2]'
  type: long?
  inputBinding:
    prefix: --contig-end-mode
- id: in_orf_start_mode
  doc: 'Orf fragment can be 0: from start to stop, 1: from any to stop, 2: from last
    encountered start to stop (no start in the middle) [1]'
  type: long?
  inputBinding:
    prefix: --orf-start-mode
- id: in_forward_frames
  doc: Comma-separated list of frames on the forward strand to be extracted [1,2,3]
  type: long?
  inputBinding:
    prefix: --forward-frames
- id: in_reverse_frames
  doc: Comma-separated list of frames on the reverse strand to be extracted [1,2,3]
  type: long?
  inputBinding:
    prefix: --reverse-frames
- id: in_translation_table
  doc: "1) CANONICAL, 2) VERT_MITOCHONDRIAL, 3) YEAST_MITOCHONDRIAL, 4) MOLD_MITOCHONDRIAL,\
    \ 5) INVERT_MITOCHONDRIAL, 6) CILIATE\n9) FLATWORM_MITOCHONDRIAL, 10) EUPLOTID,\
    \ 11) PROKARYOTE, 12) ALT_YEAST, 13) ASCIDIAN_MITOCHONDRIAL, 14) ALT_FLATWORM_MITOCHONDRIAL\n\
    15) BLEPHARISMA, 16) CHLOROPHYCEAN_MITOCHONDRIAL, 21) TREMATODE_MITOCHONDRIAL,\
    \ 22) SCENEDESMUS_MITOCHONDRIAL\n23) THRAUSTOCHYTRIUM_MITOCHONDRIAL, 24) PTEROBRANCHIA_MITOCHONDRIAL,\
    \ 25) GRACILIBACTERIA, 26) PACHYSOLEN, 27) KARYORELICT, 28) CONDYLOSTOMA\n29)\
    \ MESODINIUM, 30) PERTRICH, 31) BLASTOCRITHIDIA [1]"
  type: long?
  inputBinding:
    prefix: --translation-table
- id: in_translate
  doc: Translate ORF to amino acid [0]
  type: long?
  inputBinding:
    prefix: --translate
- id: in_use_all_table_starts
  doc: Use all alternatives for a start codon in the genetic table, if false - only
    ATG (AUG) [0]
  type: boolean?
  inputBinding:
    prefix: --use-all-table-starts
- id: in_id_offset
  doc: Numeric ids in index file are offset by this value [0]
  type: long?
  inputBinding:
    prefix: --id-offset
- id: in_add_orf_stop
  doc: Add stop codon '*' at complete start and end [0]
  type: boolean?
  inputBinding:
    prefix: --add-orf-stop
- id: in_max_seq_len
  doc: Maximum sequence length [65535]
  type: long?
  inputBinding:
    prefix: --max-seq-len
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
- id: in_threads
  doc: Number of CPU-cores used (all by default) [2]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_remove_tmp_files
  doc: Delete temporary files [0]
  type: boolean?
  inputBinding:
    prefix: --remove-tmp-files
- id: in_create_lookup
  doc: Create database lookup file (can be very large) [0]
  type: long?
  inputBinding:
    prefix: --create-lookup
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_seed_sub_mat
  doc: Substitution matrix file for k-mer generation [nucl:nucleotide.out,aa:blosum62.out]
  type: File?
  outputBinding:
    glob: $(inputs.in_seed_sub_mat)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0
cwlVersion: v1.1
baseCommand:
- mmseqs
- createlinindex
