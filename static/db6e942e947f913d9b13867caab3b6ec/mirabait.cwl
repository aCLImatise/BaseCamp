class: CommandLineTool
id: mirabait.cwl
inputs:
- id: in_load_bait_sequences
  doc: "Load bait sequences from file\n(multiple -b allowed)"
  type: File?
  inputBinding:
    prefix: -b
- id: in_load_baits_filesonly
  doc: "Load baits from kmer statistics file, not from sequence files.\nOnly one -B\
    \ allowed, cannot be combined with -b.\n(see -K for creating such a file)"
  type: File?
  inputBinding:
    prefix: -B
- id: in_set_options_predefined
  doc: "Set options for predefined job from supplied MIRA library\nCurrently available\
    \ jobs:\nrrna Bait rRNA sequences"
  type: string?
  inputBinding:
    prefix: -j
- id: in_file_load_paired
  doc: "file2  Load paired sequences to search from file1 and file2\nFiles must contain\
    \ same number of sequences, sequence\nnames must be in same order.\nMultiple -p\
    \ allowed, but must come before non-paired\nfiles."
  type: File?
  inputBinding:
    prefix: -p
- id: in_load_paired_sequences
  doc: "Load paired sequences from file\nFile must be interleaved: pairs must follow\
    \ each other,\nnon-pairs are not allowed.\nMultiple -p allowed, but must come\
    \ before non-paired\nfiles."
  type: File?
  inputBinding:
    prefix: -P
- id: in_kmer_length_default
  doc: kmer length of bait in bases (<=256, default=31)
  type: long?
  inputBinding:
    prefix: -k
- id: in_minimum_number_kmer
  doc: "If >0: minimum number of k-mer baits needed (default=1)\nIf <=0: allowed number\
    \ of missed kmers over sequence\nlength"
  type: long?
  inputBinding:
    prefix: -n
- id: in_use_kmers_see
  doc: Do not use kmers with microrepeats (DUST-like, see also -D)
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_set_length_discard
  doc: "Set length of microrepeats in kmers to discard from bait.\nint > 0 microrepeat\
    \ len in percentage of kmer length.\nE.g.: -k 17 -D 67 --> 11.39 bases --> 12\
    \ bases.\nint < 0 microrepeat len in bases.\nint != 0 implies -d, int=0 turns\
    \ DUST filter off."
  type: long?
  inputBinding:
    prefix: -D
- id: in_selects_sequences_hit_bait
  doc: Selects sequences that do not hit bait
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_selects_sequences_hit_hit
  doc: "Selects sequences that hit and do not hit bait (to\ndifferent files)"
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_checking_reverse_complement
  doc: No checking of reverse complement direction
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_number_use_cpu
  doc: Number of threads to use (default=0 -> up to 4 CPU cores)
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_case_change_denote
  doc: No case change of sequence to denote bait hits
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_length_line_unlimited
  doc: length of a line (FASTA only, default 0=unlimited)
  type: long?
  inputBinding:
    prefix: -l
- id: in_save_kmer_statistics
  doc: Save kmer statistics to 'file' (see also -B)
  type: File?
  inputBinding:
    prefix: -K
- id: in_change_prefix_used
  doc: "Change the prefix 'bait' to <name>\nHas no effect if -o/-O is used and targets\
    \ are not\ndirectories"
  type: string?
  inputBinding:
    prefix: -N
- id: in_save_sequences_matching
  doc: "Save sequences matching bait to path\nIf path is a directory, write separate\
    \ files into this\ndirectory. If not, combine all matching sequences from\nthe\
    \ input file(s) into a single file specified by the\npath."
  type: File?
  inputBinding:
    prefix: -o
- id: in_o_sequences_matching
  doc: Like -o, but for sequences not matching
  type: File?
  inputBinding:
    prefix: -O
- id: in_use_instead_ofcurrent
  doc: "Use 'dir' as directory for temporary files instead of\ncurrent working directory."
  type: Directory?
  inputBinding:
    prefix: -T
- id: in_memory_use_computing
  doc: "Memory to use for computing kmer statistics\n0..100 = use percentage of free\
    \ system memory\n>100 = amount of MiB to use (e.g. 16384 for 16 GiB)\nDefault\
    \ 75 (75% of free system memory)."
  type: long?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mirabait
