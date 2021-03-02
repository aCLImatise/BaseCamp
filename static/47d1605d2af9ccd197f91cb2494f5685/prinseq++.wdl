version 1.0

task Prinseq {
  input {
    Boolean? version
    Boolean? threads
    Int? verbose
    File? fast_q
    File? fast_q_two
    Boolean? fast_a
    Boolean? phred_six_four
    Int? out_format
    Int? out_name
    Boolean? rm_header
    File? out_gz
    File? out_single_two
    Int? min_len
    Int? max_len
    Float? min_gc
    Float? max_gc
    Int? min_qual_score
    Int? min_qual_mean
    Int? ns_max_n
    Boolean? no_iupac
    Boolean? de_rep
    Boolean? lc_entropy
    Boolean? lc_dust
    Int? trim_left
    Int? trim_right
    Int? trim_tail_left
    Int? trim_tail_right
    String? trim_qual_rule
    Boolean? trim_qual_left
    Boolean? trim_qual_right
    Boolean? trim_qual_window
    Boolean? trim_qual_step
    Int? trim_qual_type
  }
  command <<<
    prinseq__ \
      ~{if (version) then "-version" else ""} \
      ~{if (threads) then "-threads" else ""} \
      ~{if defined(verbose) then ("-VERBOSE " +  '"' + verbose + '"') else ""} \
      ~{if defined(fast_q) then ("-fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(fast_q_two) then ("-fastq2 " +  '"' + fast_q_two + '"') else ""} \
      ~{if (fast_a) then "-FASTA" else ""} \
      ~{if (phred_six_four) then "-phred64" else ""} \
      ~{if defined(out_format) then ("-out_format " +  '"' + out_format + '"') else ""} \
      ~{if defined(out_name) then ("-out_name " +  '"' + out_name + '"') else ""} \
      ~{if (rm_header) then "-rm_header" else ""} \
      ~{if (out_gz) then "-out_gz" else ""} \
      ~{if (out_single_two) then "-out_single2" else ""} \
      ~{if defined(min_len) then ("-min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_len) then ("-max_len " +  '"' + max_len + '"') else ""} \
      ~{if defined(min_gc) then ("-min_gc " +  '"' + min_gc + '"') else ""} \
      ~{if defined(max_gc) then ("-max_gc " +  '"' + max_gc + '"') else ""} \
      ~{if defined(min_qual_score) then ("-min_qual_score " +  '"' + min_qual_score + '"') else ""} \
      ~{if defined(min_qual_mean) then ("-min_qual_mean " +  '"' + min_qual_mean + '"') else ""} \
      ~{if defined(ns_max_n) then ("-ns_max_n " +  '"' + ns_max_n + '"') else ""} \
      ~{if (no_iupac) then "-noiupac" else ""} \
      ~{if (de_rep) then "-derep" else ""} \
      ~{if (lc_entropy) then "-lc_entropy" else ""} \
      ~{if (lc_dust) then "-lc_dust" else ""} \
      ~{if defined(trim_left) then ("-trim_left " +  '"' + trim_left + '"') else ""} \
      ~{if defined(trim_right) then ("-trim_right " +  '"' + trim_right + '"') else ""} \
      ~{if defined(trim_tail_left) then ("-trim_tail_left " +  '"' + trim_tail_left + '"') else ""} \
      ~{if defined(trim_tail_right) then ("-trim_tail_right " +  '"' + trim_tail_right + '"') else ""} \
      ~{if defined(trim_qual_rule) then ("-trim_qual_rule " +  '"' + trim_qual_rule + '"') else ""} \
      ~{if (trim_qual_left) then "-trim_qual_left" else ""} \
      ~{if (trim_qual_right) then "-trim_qual_right" else ""} \
      ~{if (trim_qual_window) then "-trim_qual_window" else ""} \
      ~{if (trim_qual_step) then "-trim_qual_step" else ""} \
      ~{if defined(trim_qual_type) then ("-trim_qual_type " +  '"' + trim_qual_type + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/prinseq-plus-plus:1.2.3--h176a8bc_0"
  }
  parameter_meta {
    version: "Print version; ignore other arguments."
    threads: "Nuber of threads to use. Note that if more than one thread is used, output\\nsequences might not be in the same order as input sequences. (Default=1)"
    verbose: "Format of the report of filtered reads, VERBOSE=1 prints information only\\non the filters that removed sequences. VERBOSE=2 prints numbers for filters\\nin order (min_len, max_len, min_cg, max_cg, min_qual_score, min_qual_mean,\\nns_max_n, noiupac, derep, lc_entropy, lc_dust, trim_tail_left, trim_tail_right,\\ntrim_qual_left, trim_qual_right, trim_left, trim_right) to compare stats of diferent files.\\nVERBOSE=0 prints nothing.\\n(Default=1)"
    fast_q: "Input file in FASTQ format. Can also read a compressed (.gz) file."
    fast_q_two: "Input file in FASTQ format for pair-end reads. Can also read a\\ncompressed (.gz) file."
    fast_a: "Input is in fasta format (no quality). Note that the output format is\\nstill fastq by default. Quality will be treated as 31 (A) for all bases."
    phred_six_four: "Input quality is in phred64 format. This is for older Illumina/Solexa reads."
    out_format: "Set output format. 0 FASTQ, 1 FASTA. (Default=0)"
    out_name: "For pair-end sequences, the output files are <string>_good_out_R1 and\\n<string>_good_out_R2 for pairs where both reads pass quality control,\\n<string>_single_out_R1 and <string>_single_out_R2 for read that passed\\nquality control but mate didn't. <string>_bad_out_R1 and <string>_bad_out_R2\\nfor reads that fail quality controls. [Default = random size 6 string]"
    rm_header: "Remove the header in the 3rd line of the fastq (+header -> +). This does\\nnot change the header in the 1st line (@header)."
    out_gz: "Write the output to a compressed file (WARNING this can be really SLOW)"
    out_single_two: "Rename the output files idividually, this overwrites the names given by\\n-out_name only for the selected files. File extension won't be added\\nautomatically. (TIP: if you don't need a file, set its name to /dev/null)"
    min_len: "Filter sequence shorter than min_len."
    max_len: "Filter sequence longer than max_len."
    min_gc: "Filter sequence with GC percent content below min_gc."
    max_gc: "Filter sequence with GC percent content above min_gc."
    min_qual_score: "Filter sequence with at least one base with quality score below\\nmin_qual_score."
    min_qual_mean: "Filter sequence with quality score mean below min_qual_mean."
    ns_max_n: "Filter sequence with more than ns_max_n Ns."
    no_iupac: "Filter sequence with characters other than A, C, G, T or N."
    de_rep: "Filter duplicated sequences. This only remove exact duplicates."
    lc_entropy: "=[float]\\nFilter sequences with entropy lower than [float]. [float] should be in\\nthe 0-1 interval. (Default=0.5)"
    lc_dust: "=[float]\\nFilter sequences with dust_score lower than [float]. [float] should be in\\nthe 0-1 interval. (Default=0.5)"
    trim_left: "Trim <integer> bases from the left (5'->3')."
    trim_right: "Trim <integer> bases from the right (3'->5')."
    trim_tail_left: "Trim poly-A/T tail with a minimum length of <integer> at the\\n5'-end."
    trim_tail_right: "Trim poly-A/T tail with a minimum length of <integer> at the\\n3'-end."
    trim_qual_rule: "Rule to use to compare quality score to calculated value. Allowed\\noptions are lt (less than), gt (greater than) and et (equal to).\\n[default: lt]"
    trim_qual_left: "=[float]\\nTrim recursively from the 3'-end chunks of length -trim_qual_step if the\\nmean quality of the first -trim_qual_window bases is less than [float].\\n(Default=20)"
    trim_qual_right: "=[float]\\nTrim recursively from the 5'-end chunks of length -trim_qual_step if the\\nmean quality of the last -trim_qual_window bases is less than [float].\\n(Default=20)"
    trim_qual_window: "[int]\\nSize of the window used by trim_qual_left and trim_qual_right (Default=5)"
    trim_qual_step: "[int]\\nStep size used by trim_qual_left and trim_qual_right (Default=2)"
    trim_qual_type: "Type of quality score calculation to use. Allowed options are min,\\nmean, max and sum. [default= min]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_gz = "${in_out_gz}"
    File out_out_single_two = "${in_out_single_two}"
  }
}