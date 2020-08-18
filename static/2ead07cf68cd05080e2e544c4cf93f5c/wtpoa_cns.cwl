class: CommandLineTool
id: ../../../wtpoa_cns.cwl
inputs:
- id: number_of_threads
  doc: Number of threads, [4]
  type: long
  inputBinding:
    prefix: -t
- id: reference_sequences_sam
  doc: Reference sequences for SAM input, will invoke sorted-SAM input mode
  type: string
  inputBinding:
    prefix: -d
- id: xored_flags_handle
  doc: "XORed flags to handle SAM input. [0] 0x1: Only process reference regions present\
    \ in/between SAM alignments 0x2: Don't fileter secondary/supplementary SAM records\
    \ with flag (0x100 | 0x800)"
  type: long
  inputBinding:
    prefix: -u
- id: force_use_mode
  doc: Force to use reference mode
  type: boolean
  inputBinding:
    prefix: -r
- id: similar_translate_sam
  doc: Similar with -d, but translate SAM into wtdbg layout file
  type: string
  inputBinding:
    prefix: -p
- id: input_files_sorted
  doc: Input file(s) *.ctg.lay from wtdbg, +, [STDIN] Or sorted SAM files when having
    -d/-p
  type: string
  inputBinding:
    prefix: -i
- id: output_files
  doc: Output files, [STDOUT]
  type: string
  inputBinding:
    prefix: -o
- id: force_overwrite
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: expected_max_length
  doc: Expected max length of node, or say the overlap length of two adjacent units
    in layout file, [1500] bp overlap will be default to 1500(or 150 for sam-sr) when
    having -d/-p, block size will be 2.5 * overlap
  type: long
  inputBinding:
    prefix: -j
- id: bonus_tribases_match
  doc: Bonus for tri-bases match, [0]
  type: long
  inputBinding:
    prefix: -b
- id: match_score
  doc: Match score, [2]
  type: long
  inputBinding:
    prefix: -M
- id: mismatch_score
  doc: Mismatch score, [-5]
  type: long
  inputBinding:
    prefix: -X
- id: insertion_score
  doc: Insertion score, [-2]
  type: long
  inputBinding:
    prefix: -I
- id: deletion_score
  doc: Deletion score, [-4]
  type: long
  inputBinding:
    prefix: -D
- id: homopolymer_merge_score
  doc: Homopolymer merge score used in dp-call-cns mode, [-3]
  type: double
  inputBinding:
    prefix: -H
- id: bandwidth_poa_program
  doc: Bandwidth in POA, [Wmin[,Wmax[,mat_rate]]], mat_rate = matched_bases/total_bases
    [64,1024,0.92] Program will double bandwidth from Wmin to Wmax when mat_rate is
    lower than setting
  type: string
  inputBinding:
    prefix: -B
- id: window_size_middle
  doc: Window size in the middle of the first read for fast align remaining reads,
    [200] If $W is negative, will disable fast align, but use the abs($W) as Band
    align score cutoff
  type: long
  inputBinding:
    prefix: -W
- id: min_size_aligned
  doc: Min size of aligned size in window, [$W * 0.5]
  type: long
  inputBinding:
    prefix: -w
- id: abort_when_read
  doc: Abort TriPOA when any read cannot be fast aligned, then try POA
  type: boolean
  inputBinding:
    prefix: -A
- id: shuffle_mode_shuffle
  doc: "Shuffle mode, 0: don't shuffle reads, 1: by shared kmers, 2: subsampling.\
    \ [1]"
  type: long
  inputBinding:
    prefix: -S
- id: realignment_bandwidth_disable
  doc: 'Realignment bandwidth, 0: disable, [16]'
  type: long
  inputBinding:
    prefix: -R
- id: consensus_mode_runlength
  doc: 'Consensus mode: 0, run-length; 1, dp-call-cns, [0]'
  type: long
  inputBinding:
    prefix: -c
- id: min_count_call
  doc: Min count of bases to call a consensus base, [3]
  type: long
  inputBinding:
    prefix: -C
- id: min_frequency_call
  doc: Min frequency of non-gap bases to call a consensus base, [0.5]
  type: double
  inputBinding:
    prefix: -F
- id: max_number_reads
  doc: Max number of reads in PO-MSA [20] Keep in mind that I am not going to generate
    high accurate consensus sequences here
  type: long
  inputBinding:
    prefix: -N
- id: presets_samsr_contigs
  doc: "Presets, [] sam-sr: polishs contigs from short reads mapping, accepts sorted\
    \ SAM files shorted for '-j 50 -W 0 -R 0 -b 1 -c 1 -N 50 -rS 2'"
  type: string
  inputBinding:
    prefix: -x
- id: quiet
  doc: Quiet
  type: boolean
  inputBinding:
    prefix: -q
- id: verbose
  doc: Verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: print_version_information
  doc: Print version information and then exit
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- wtpoa-cns
