class: CommandLineTool
id: ../../../deSALT.cwl
inputs:
- id: in_temporary_file_storing
  doc: "The temporary file for storing alignment skeletons in first pass.\nIf users\
    \ run two deSALT program in the same time, -f option is necessary."
  type: File
  inputBinding:
    prefix: -f
- id: in_thread
  doc: '[INT]    Number of threads. [4]'
  type: boolean
  inputBinding:
    prefix: --thread
- id: in_index_km_er
  doc: '[INT]    K-mer length of RdBG-index. [22]'
  type: boolean
  inputBinding:
    prefix: --index-kmer
- id: in_seeding_l_mer
  doc: '[INT]    K-mer length of seeding process (no long than RdBG-index). [15]'
  type: boolean
  inputBinding:
    prefix: --seeding-lmer
- id: in_local_hash_km_er
  doc: '[INT]    K-mer length of local hash process. [8]'
  type: boolean
  inputBinding:
    prefix: --local-hash-kmer
- id: in_seed_step
  doc: '[INT]    The interval of seeding. [5]'
  type: boolean
  inputBinding:
    prefix: --seed-step
- id: in_batch_size
  doc: '[INT]    The number of reads to be processed in one loop. [100000]'
  type: boolean
  inputBinding:
    prefix: --batch-size
- id: in_max_uni_pos
  doc: '[INT]    Maximum allowed number of hits per seed. [50]'
  type: boolean
  inputBinding:
    prefix: --max-uni-pos
- id: in_max_read_len
  doc: '[INT]    Maximum allowed read length. [1000000]'
  type: boolean
  inputBinding:
    prefix: --max-readlen
- id: in_min_frag_dis
  doc: '[INT]    Maximum allowed distance of two fragment can be connect. [20]'
  type: boolean
  inputBinding:
    prefix: --min-frag-dis
- id: in_max_intron_len
  doc: '[INT]    maximum allowed intron length. [200000]'
  type: boolean
  inputBinding:
    prefix: --max-intron-len
- id: in_min_chain_score
  doc: '[INT]    minimal skeleton score(match bases minus gap penalty). [20]'
  type: boolean
  inputBinding:
    prefix: --min-chain-score
- id: in_strand_diff
  doc: '[INT]    The minimal difference of dp score by two strand to make sure the
    transcript strand. [20]'
  type: boolean
  inputBinding:
    prefix: --strand-diff
- id: in_max_read_gap
  doc: '[INT]    Maximum allowed gap in read when chaining. [2000]'
  type: boolean
  inputBinding:
    prefix: --max-read-gap
- id: in_secondary_ratio
  doc: '[FLOAT]  Min secondary-to-primary score ratio. [0.90]'
  type: boolean
  inputBinding:
    prefix: --secondary-ratio
- id: in_e_shift
  doc: '[INT]    The number of downstream (upstream) exons will be processed when
    left (right) extension. [5]'
  type: boolean
  inputBinding:
    prefix: --e-shift
- id: in_trans_strand
  doc: Find splicing sites according to transcript strand
  type: boolean
  inputBinding:
    prefix: --trans-strand
- id: in_gtf
  doc: "[STR]    Provided annotation information for precise intron donor and acceptor\
    \ sites.\nConvert GTF file(now support GTF format only) to fixed format of deSALT\
    \ by Annotation_Load.py"
  type: boolean
  inputBinding:
    prefix: --gtf
- id: in_read_type
  doc: "[STR]    Specifiy the type of reads and set multiple paramters unless overriden.\n\
    [null] default parameters.\nccs (PacBio SMRT CCS reads): error rate 1%\nclr (PacBio\
    \ SMRT CLR reads): error rate 15%\nont1d (Oxford Nanopore 1D reads): error rate\
    \ > 20%\nont2d (Oxford Nanopore 2D reads): error rate > 12%"
  type: boolean
  inputBinding:
    prefix: --read-type
- id: in_open_pen
  doc: "[INT(,INT)]\nGap open penealty. [2,32]"
  type: boolean
  inputBinding:
    prefix: --open-pen
- id: in_ext_pen
  doc: "[INT(,INT)]\nGap extension penalty; a k-long gap costs min{O1+k*E1,O2+k*E2}.\
    \ [1,0]"
  type: boolean
  inputBinding:
    prefix: --ext-pen
- id: in_match_score
  doc: '[INT]    Match score for SW-alginment. [1]'
  type: boolean
  inputBinding:
    prefix: --match-score
- id: in_mis_score
  doc: '[INT]    Mismatch score for SW-alignment. [2]'
  type: boolean
  inputBinding:
    prefix: --mis-score
- id: in_z_drop
  doc: "[INT(,INT)]\nZ-drop score for splice/non-splice alignment. [400]"
  type: boolean
  inputBinding:
    prefix: --zdrop
- id: in_band_width
  doc: '[INT]    Bandwidth used in chaining and DP-based alignment. [500]'
  type: boolean
  inputBinding:
    prefix: --band-width
- id: in_non_can
  doc: '[INT]    Penalty score for non-canonical splice junction sites. [9]'
  type: boolean
  inputBinding:
    prefix: --noncan
- id: in_top_num_aln
  doc: '[INT]    Max allowed number of secondary alignment. [4]'
  type: boolean
  inputBinding:
    prefix: --top-num-aln
- id: in_without_qual
  doc: Don't output base quality in SAM
  type: boolean
  inputBinding:
    prefix: --without-qual
- id: in_temp_file_per_fix
  doc: "[STR]    Route of temporary files after the first-pass alignment. [1pass_anchor]\n\
    If you run more than one deSALT program in the same time,\nyou must point out\
    \ different routes of temporary files for each program!!!\nIf no, every deSALT\
    \ program will write temporary data to the same file which\nwill cause crash of\
    \ program in 2-pass alignment due to inconsistent temporary data."
  type: File
  inputBinding:
    prefix: --temp-file-perfix
- id: in_output
  doc: '[STR]    Output file (SAM format). [./aln.sam]'
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_temp_file_per_fix
  doc: "[STR]    Route of temporary files after the first-pass alignment. [1pass_anchor]\n\
    If you run more than one deSALT program in the same time,\nyou must point out\
    \ different routes of temporary files for each program!!!\nIf no, every deSALT\
    \ program will write temporary data to the same file which\nwill cause crash of\
    \ program in 2-pass alignment due to inconsistent temporary data."
  type: File
  outputBinding:
    glob: $(inputs.in_temp_file_per_fix)
- id: out_output
  doc: '[STR]    Output file (SAM format). [./aln.sam]'
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- deSALT
