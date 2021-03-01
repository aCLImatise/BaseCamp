version 1.0

task SpadesbwaMem {
  input {
    Int? number_of_threads
    Int? minimum_seed_length
    Int? band_width_banded
    Int? offdiagonal_xdropoff
    Float? look_internal_float
    Int? seed_occurrence_round
    Int? skip_seeds_more
    Float? drop_chains_shorter
    Int? discard_chain_seeded
    Int? perform_most_int
    Boolean? skip_mate_rescue
    Boolean? skip_pairing_rescue
    Int? score_sequence_tdboelu
    Int? penalty_for_mismatch
    Array[Int] gap_open_penalties
    Array[Int] gap_extension_penalty
    Array[Int] penalty_end_clipping
    Int? penalty_unpaired_read
    Int? read_type_setting
    Boolean? smart_pairing_ignoring
    String? read_group_line
    File? file_insert_str
    File? sam_file_output
    Boolean? treat_alt_contigs
    Boolean? split_alignment_take
    Int? process_int_input
    Int? verbosity_level_error
    Int? minimum_score_output
    Array[Int] there_int_hits
    Boolean? output_alignments_pe
    Boolean? append_fastafastq_comment
    Boolean? output_reference_header
    Boolean? use_soft_clipping
    Boolean? mark_shorter_hits
    Array[Float] specify_mean_deviation
    String bwa
    String mem
    String idx_base
    Int in_one_dot_fq
    Int? in_two_dot_fq
  }
  command <<<
    spades_bwa mem \
      ~{bwa} \
      ~{mem} \
      ~{idx_base} \
      ~{in_one_dot_fq} \
      ~{in_two_dot_fq} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(minimum_seed_length) then ("-k " +  '"' + minimum_seed_length + '"') else ""} \
      ~{if defined(band_width_banded) then ("-w " +  '"' + band_width_banded + '"') else ""} \
      ~{if defined(offdiagonal_xdropoff) then ("-d " +  '"' + offdiagonal_xdropoff + '"') else ""} \
      ~{if defined(look_internal_float) then ("-r " +  '"' + look_internal_float + '"') else ""} \
      ~{if defined(seed_occurrence_round) then ("-y " +  '"' + seed_occurrence_round + '"') else ""} \
      ~{if defined(skip_seeds_more) then ("-c " +  '"' + skip_seeds_more + '"') else ""} \
      ~{if defined(drop_chains_shorter) then ("-D " +  '"' + drop_chains_shorter + '"') else ""} \
      ~{if defined(discard_chain_seeded) then ("-W " +  '"' + discard_chain_seeded + '"') else ""} \
      ~{if defined(perform_most_int) then ("-m " +  '"' + perform_most_int + '"') else ""} \
      ~{if (skip_mate_rescue) then "-S" else ""} \
      ~{if (skip_pairing_rescue) then "-P" else ""} \
      ~{if defined(score_sequence_tdboelu) then ("-A " +  '"' + score_sequence_tdboelu + '"') else ""} \
      ~{if defined(penalty_for_mismatch) then ("-B " +  '"' + penalty_for_mismatch + '"') else ""} \
      ~{if defined(gap_open_penalties) then ("-O " +  '"' + gap_open_penalties + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("-E " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(penalty_end_clipping) then ("-L " +  '"' + penalty_end_clipping + '"') else ""} \
      ~{if defined(penalty_unpaired_read) then ("-U " +  '"' + penalty_unpaired_read + '"') else ""} \
      ~{if defined(read_type_setting) then ("-x " +  '"' + read_type_setting + '"') else ""} \
      ~{if (smart_pairing_ignoring) then "-p" else ""} \
      ~{if defined(read_group_line) then ("-R " +  '"' + read_group_line + '"') else ""} \
      ~{if defined(file_insert_str) then ("-H " +  '"' + file_insert_str + '"') else ""} \
      ~{if defined(sam_file_output) then ("-o " +  '"' + sam_file_output + '"') else ""} \
      ~{if (treat_alt_contigs) then "-j" else ""} \
      ~{if (split_alignment_take) then "-5" else ""} \
      ~{if defined(process_int_input) then ("-K " +  '"' + process_int_input + '"') else ""} \
      ~{if defined(verbosity_level_error) then ("-v " +  '"' + verbosity_level_error + '"') else ""} \
      ~{if defined(minimum_score_output) then ("-T " +  '"' + minimum_score_output + '"') else ""} \
      ~{if defined(there_int_hits) then ("-h " +  '"' + there_int_hits + '"') else ""} \
      ~{if (output_alignments_pe) then "-a" else ""} \
      ~{if (append_fastafastq_comment) then "-C" else ""} \
      ~{if (output_reference_header) then "-V" else ""} \
      ~{if (use_soft_clipping) then "-Y" else ""} \
      ~{if (mark_shorter_hits) then "-M" else ""} \
      ~{if defined(specify_mean_deviation) then ("-I " +  '"' + specify_mean_deviation + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_of_threads: "number of threads [1]"
    minimum_seed_length: "minimum seed length [19]"
    band_width_banded: "band width for banded alignment [100]"
    offdiagonal_xdropoff: "off-diagonal X-dropoff [100]"
    look_internal_float: "look for internal seeds inside a seed longer than {-k} * FLOAT [1.5]"
    seed_occurrence_round: "seed occurrence for the 3rd round seeding [20]"
    skip_seeds_more: "skip seeds with more than INT occurrences [500]"
    drop_chains_shorter: "drop chains shorter than FLOAT fraction of the longest overlapping chain [0.50]"
    discard_chain_seeded: "discard a chain if seeded bases shorter than INT [0]"
    perform_most_int: "perform at most INT rounds of mate rescues for each read [50]"
    skip_mate_rescue: "skip mate rescue"
    skip_pairing_rescue: "skip pairing; mate rescue performed unless -S also in use"
    score_sequence_tdboelu: "score for a sequence match, which scales options -TdBOELU unless overridden [1]"
    penalty_for_mismatch: "penalty for a mismatch [4]"
    gap_open_penalties: "gap open penalties for deletions and insertions [6,6]"
    gap_extension_penalty: "gap extension penalty; a gap of size k cost '{-O} + {-E}*k' [1,1]"
    penalty_end_clipping: "penalty for 5'- and 3'-end clipping [5,5]"
    penalty_unpaired_read: "penalty for an unpaired read pair [17]"
    read_type_setting: "read type. Setting -x changes multiple parameters unless overridden [null]\\npacbio: -k17 -W40 -r10 -A1 -B1 -O1 -E1 -L0  (PacBio reads to ref)\\nont2d: -k14 -W20 -r10 -A1 -B1 -O1 -E1 -L0  (Oxford Nanopore 2D-reads to ref)\\nintractg: -B9 -O16 -L5  (intra-species contigs to ref)"
    smart_pairing_ignoring: "smart pairing (ignoring in2.fq)"
    read_group_line: "read group header line such as '@RG\\tID:foo\\tSM:bar' [null]"
    file_insert_str: "/FILE   insert STR to header if it starts with @; or insert lines in FILE [null]"
    sam_file_output: "sam file to output results to [stdout]"
    treat_alt_contigs: "treat ALT contigs as part of the primary assembly (i.e. ignore <idxbase>.alt file)"
    split_alignment_take: "for split alignment, take the alignment with the smallest coordiate as primary"
    process_int_input: "process INT input bases in each batch regardless of nThreads (for reproducibility) []"
    verbosity_level_error: "verbosity level: 1=error, 2=warning, 3=message, 4+=debugging [3]"
    minimum_score_output: "minimum score to output [30]"
    there_int_hits: "if there are <INT hits with score >80% of the max score, output all in XA [5,200]"
    output_alignments_pe: "output all alignments for SE or unpaired PE"
    append_fastafastq_comment: "append FASTA/FASTQ comment to SAM output"
    output_reference_header: "output the reference FASTA header in the XR tag"
    use_soft_clipping: "use soft clipping for supplementary alignments"
    mark_shorter_hits: "mark shorter split hits as secondary"
    specify_mean_deviation: "specify the mean, standard deviation (10% of the mean if absent), max\\n(4 sigma from the mean if absent) and min of the insert size distribution.\\nFR orientation only. [inferred]"
    bwa: ""
    mem: ""
    idx_base: ""
    in_one_dot_fq: ""
    in_two_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
    File out_sam_file_output = "${in_sam_file_output}"
  }
}