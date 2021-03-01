class: CommandLineTool
id: wtpoa_cns.cwl
inputs:
- id: in_number_of_threads
  doc: Number of threads, [4]
  type: long?
  inputBinding:
    prefix: -t
- id: in_reference_sequences_sam
  doc: Reference sequences for SAM input, will invoke sorted-SAM input mode
  type: string?
  inputBinding:
    prefix: -d
- id: in_xored_flags_handle
  doc: "XORed flags to handle SAM input. [0]\n0x1: Only process reference regions\
    \ present in/between SAM alignments\n0x2: Don't fileter secondary/supplementary\
    \ SAM records with flag (0x100 | 0x800)"
  type: long?
  inputBinding:
    prefix: -u
- id: in_force_use_mode
  doc: Force to use reference mode
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_similar_translate_sam
  doc: Similar with -d, but translate SAM into wtdbg layout file
  type: File?
  inputBinding:
    prefix: -p
- id: in_input_files_sorted
  doc: "Input file(s) *.ctg.lay from wtdbg, +, [STDIN]\nOr sorted SAM files when having\
    \ -d/-p"
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_files
  doc: Output files, [STDOUT]
  type: string?
  inputBinding:
    prefix: -o
- id: in_force_overwrite
  doc: Force overwrite
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_expected_max_length
  doc: "Expected max length of node, or say the overlap length of two adjacent units\
    \ in layout file, [1500] bp\noverlap will be default to 1500(or 150 for sam-sr)\
    \ when having -d/-p, block size will be 2.5 * overlap"
  type: long?
  inputBinding:
    prefix: -j
- id: in_bonus_tribases_match
  doc: Bonus for tri-bases match, [0]
  type: long?
  inputBinding:
    prefix: -b
- id: in_match_score
  doc: Match score, [2]
  type: long?
  inputBinding:
    prefix: -M
- id: in_mismatch_score
  doc: Mismatch score, [-5]
  type: long?
  inputBinding:
    prefix: -X
- id: in_insertion_score
  doc: Insertion score, [-2]
  type: long?
  inputBinding:
    prefix: -I
- id: in_deletion_score
  doc: Deletion score, [-4]
  type: long?
  inputBinding:
    prefix: -D
- id: in_homopolymer_merge_score
  doc: Homopolymer merge score used in dp-call-cns mode, [-3]
  type: double?
  inputBinding:
    prefix: -H
- id: in_bandwidth_poa_program
  doc: "Bandwidth in POA, [Wmin[,Wmax[,mat_rate]]], mat_rate = matched_bases/total_bases\
    \ [64,1024,0.92]\nProgram will double bandwidth from Wmin to Wmax when mat_rate\
    \ is lower than setting"
  type: double?
  inputBinding:
    prefix: -B
- id: in_window_size_is
  doc: "Window size in the middle of the first read for fast align remaining reads,\
    \ [200]\nIf $W is negative, will disable fast align, but use the abs($W) as Band\
    \ align score cutoff"
  type: long?
  inputBinding:
    prefix: -W
- id: in_min_size_aligned
  doc: Min size of aligned size in window, [$W * 0.5]
  type: long?
  inputBinding:
    prefix: -w
- id: in_abort_tripoa_when
  doc: Abort TriPOA when any read cannot be fast aligned, then try POA
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_shuffle_mode_shuffle
  doc: "Shuffle mode, 0: don't shuffle reads, 1: by shared kmers, 2: subsampling.\
    \ [1]"
  type: long?
  inputBinding:
    prefix: -S
- id: in_realignment_bandwidth_disable
  doc: 'Realignment bandwidth, 0: disable, [16]'
  type: long?
  inputBinding:
    prefix: -R
- id: in_consensus_mode_runlength
  doc: 'Consensus mode: 0, run-length; 1, dp-call-cns, [0]'
  type: long?
  inputBinding:
    prefix: -c
- id: in_min_count_call
  doc: Min count of bases to call a consensus base, [3]
  type: long?
  inputBinding:
    prefix: -C
- id: in_min_frequency_nongap
  doc: Min frequency of non-gap bases to call a consensus base, [0.5]
  type: double?
  inputBinding:
    prefix: -F
- id: in_max_number_going
  doc: "Max number of reads in PO-MSA [20]\nKeep in mind that I am not going to generate\
    \ high accurate consensus sequences here"
  type: long?
  inputBinding:
    prefix: -N
- id: in_presets_samsr_polishs
  doc: "Presets, []\nsam-sr: polishs contigs from short reads mapping, accepts sorted\
    \ SAM files\nshorted for '-j 50 -W 0 -R 0 -b 1 -c 1 -N 50 -rS 2'"
  type: long?
  inputBinding:
    prefix: -x
- id: in_quiet
  doc: Quiet
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_verbose
  doc: Verbose
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_print_version_information
  doc: Print version information and then exit
  type: boolean?
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- wtpoa-cns
