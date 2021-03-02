class: CommandLineTool
id: prinseq++.cwl
inputs:
- id: in_version
  doc: Print version; ignore other arguments.
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_threads
  doc: "Nuber of threads to use. Note that if more than one thread is used, output\n\
    sequences might not be in the same order as input sequences. (Default=1)"
  type: boolean?
  inputBinding:
    prefix: -threads
- id: in_verbose
  doc: "Format of the report of filtered reads, VERBOSE=1 prints information only\n\
    on the filters that removed sequences. VERBOSE=2 prints numbers for filters\n\
    in order (min_len, max_len, min_cg, max_cg, min_qual_score, min_qual_mean,\nns_max_n,\
    \ noiupac, derep, lc_entropy, lc_dust, trim_tail_left, trim_tail_right,\ntrim_qual_left,\
    \ trim_qual_right, trim_left, trim_right) to compare stats of diferent files.\n\
    VERBOSE=0 prints nothing.\n(Default=1)"
  type: long?
  inputBinding:
    prefix: -VERBOSE
- id: in_fast_q
  doc: Input file in FASTQ format. Can also read a compressed (.gz) file.
  type: File?
  inputBinding:
    prefix: -fastq
- id: in_fast_q_two
  doc: "Input file in FASTQ format for pair-end reads. Can also read a\ncompressed\
    \ (.gz) file."
  type: File?
  inputBinding:
    prefix: -fastq2
- id: in_fast_a
  doc: "Input is in fasta format (no quality). Note that the output format is\nstill\
    \ fastq by default. Quality will be treated as 31 (A) for all bases."
  type: boolean?
  inputBinding:
    prefix: -FASTA
- id: in_phred_six_four
  doc: Input quality is in phred64 format. This is for older Illumina/Solexa reads.
  type: boolean?
  inputBinding:
    prefix: -phred64
- id: in_out_format
  doc: Set output format. 0 FASTQ, 1 FASTA. (Default=0)
  type: long?
  inputBinding:
    prefix: -out_format
- id: in_out_name
  doc: "For pair-end sequences, the output files are <string>_good_out_R1 and\n<string>_good_out_R2\
    \ for pairs where both reads pass quality control,\n<string>_single_out_R1 and\
    \ <string>_single_out_R2 for read that passed\nquality control but mate didn't.\
    \ <string>_bad_out_R1 and <string>_bad_out_R2\nfor reads that fail quality controls.\
    \ [Default = random size 6 string]"
  type: long?
  inputBinding:
    prefix: -out_name
- id: in_rm_header
  doc: "Remove the header in the 3rd line of the fastq (+header -> +). This does\n\
    not change the header in the 1st line (@header)."
  type: boolean?
  inputBinding:
    prefix: -rm_header
- id: in_out_gz
  doc: Write the output to a compressed file (WARNING this can be really SLOW)
  type: File?
  inputBinding:
    prefix: -out_gz
- id: in_out_single_two
  doc: "Rename the output files idividually, this overwrites the names given by\n\
    -out_name only for the selected files. File extension won't be added\nautomatically.\
    \ (TIP: if you don't need a file, set its name to /dev/null)"
  type: File?
  inputBinding:
    prefix: -out_single2
- id: in_min_len
  doc: Filter sequence shorter than min_len.
  type: long?
  inputBinding:
    prefix: -min_len
- id: in_max_len
  doc: Filter sequence longer than max_len.
  type: long?
  inputBinding:
    prefix: -max_len
- id: in_min_gc
  doc: Filter sequence with GC percent content below min_gc.
  type: double?
  inputBinding:
    prefix: -min_gc
- id: in_max_gc
  doc: Filter sequence with GC percent content above min_gc.
  type: double?
  inputBinding:
    prefix: -max_gc
- id: in_min_qual_score
  doc: "Filter sequence with at least one base with quality score below\nmin_qual_score."
  type: long?
  inputBinding:
    prefix: -min_qual_score
- id: in_min_qual_mean
  doc: Filter sequence with quality score mean below min_qual_mean.
  type: long?
  inputBinding:
    prefix: -min_qual_mean
- id: in_ns_max_n
  doc: Filter sequence with more than ns_max_n Ns.
  type: long?
  inputBinding:
    prefix: -ns_max_n
- id: in_no_iupac
  doc: Filter sequence with characters other than A, C, G, T or N.
  type: boolean?
  inputBinding:
    prefix: -noiupac
- id: in_de_rep
  doc: Filter duplicated sequences. This only remove exact duplicates.
  type: boolean?
  inputBinding:
    prefix: -derep
- id: in_lc_entropy
  doc: "=[float]\nFilter sequences with entropy lower than [float]. [float] should\
    \ be in\nthe 0-1 interval. (Default=0.5)"
  type: boolean?
  inputBinding:
    prefix: -lc_entropy
- id: in_lc_dust
  doc: "=[float]\nFilter sequences with dust_score lower than [float]. [float] should\
    \ be in\nthe 0-1 interval. (Default=0.5)"
  type: boolean?
  inputBinding:
    prefix: -lc_dust
- id: in_trim_left
  doc: Trim <integer> bases from the left (5'->3').
  type: long?
  inputBinding:
    prefix: -trim_left
- id: in_trim_right
  doc: Trim <integer> bases from the right (3'->5').
  type: long?
  inputBinding:
    prefix: -trim_right
- id: in_trim_tail_left
  doc: "Trim poly-A/T tail with a minimum length of <integer> at the\n5'-end."
  type: long?
  inputBinding:
    prefix: -trim_tail_left
- id: in_trim_tail_right
  doc: "Trim poly-A/T tail with a minimum length of <integer> at the\n3'-end."
  type: long?
  inputBinding:
    prefix: -trim_tail_right
- id: in_trim_qual_rule
  doc: "Rule to use to compare quality score to calculated value. Allowed\noptions\
    \ are lt (less than), gt (greater than) and et (equal to).\n[default: lt]"
  type: string?
  inputBinding:
    prefix: -trim_qual_rule
- id: in_trim_qual_left
  doc: "=[float]\nTrim recursively from the 3'-end chunks of length -trim_qual_step\
    \ if the\nmean quality of the first -trim_qual_window bases is less than [float].\n\
    (Default=20)"
  type: boolean?
  inputBinding:
    prefix: -trim_qual_left
- id: in_trim_qual_right
  doc: "=[float]\nTrim recursively from the 5'-end chunks of length -trim_qual_step\
    \ if the\nmean quality of the last -trim_qual_window bases is less than [float].\n\
    (Default=20)"
  type: boolean?
  inputBinding:
    prefix: -trim_qual_right
- id: in_trim_qual_window
  doc: "[int]\nSize of the window used by trim_qual_left and trim_qual_right (Default=5)"
  type: boolean?
  inputBinding:
    prefix: -trim_qual_window
- id: in_trim_qual_step
  doc: "[int]\nStep size used by trim_qual_left and trim_qual_right (Default=2)"
  type: boolean?
  inputBinding:
    prefix: -trim_qual_step
- id: in_trim_qual_type
  doc: "Type of quality score calculation to use. Allowed options are min,\nmean,\
    \ max and sum. [default= min]\n"
  type: long?
  inputBinding:
    prefix: -trim_qual_type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_gz
  doc: Write the output to a compressed file (WARNING this can be really SLOW)
  type: File?
  outputBinding:
    glob: $(inputs.in_out_gz)
- id: out_out_single_two
  doc: "Rename the output files idividually, this overwrites the names given by\n\
    -out_name only for the selected files. File extension won't be added\nautomatically.\
    \ (TIP: if you don't need a file, set its name to /dev/null)"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_single_two)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/prinseq-plus-plus:1.2.3--h176a8bc_0
cwlVersion: v1.1
baseCommand:
- prinseq++
