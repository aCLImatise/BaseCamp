version 1.0

task BiscuitAlign {
  input {
    Int? number_of_threads
    Int? pe_read_parent
    Int? bsw_strand_bsc
    Int? minimum_seed_length
    Int? band_width_banded
    Int? offdiagonal_xdropoff
    Float? look_longer_float
    Int? seed_occurrence_rd
    String? var_8
    String? var_9
    Int? min_base_quality
    Int? five
    Int? three
    Int? skip_seeds_more
    Float? drop_chains_shorter
    Int? discard_chain_shorter
    Int? perform_most_rounds
    Boolean? skip_mate_rescue
    Boolean? skip_pairing_mate
    Boolean? discard_fulllength_exact
    Int? score_sequence_match
    Int? penalty_for_mismatch
    Array[Int] gap_open_penalties
    Array[Int] gap_extension_penalty
    Array[Int] penalty_end_clipping
    Int? penalty_unpaired_read
    Boolean? turn_autoinference_alt
    Boolean? smart_pairing_ignoring
    String? read_group_line
    Boolean? suppress_sam_output
    String? insert_str_header
    Boolean? treat_alt_contigs
    Boolean? modify_mapq_supplementary
    Int? verbose_level_error
    Int? minimum_score_output
    Array[Int] maximum_number_hits
    Boolean? output_alignments_unpaired
    Boolean? append_fastafastq_comment
    Boolean? output_reference_header
    Boolean? use_soft_clipping
    Boolean? mark_shorter_split
    Array[Float] specify_mean_deviation
    String idx_base
    String in_one_dot_fq
    String? in_two_dot_fq
  }
  command <<<
    biscuit align \
      ~{idx_base} \
      ~{in_one_dot_fq} \
      ~{in_two_dot_fq} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(pe_read_parent) then ("-b " +  '"' + pe_read_parent + '"') else ""} \
      ~{if defined(bsw_strand_bsc) then ("-f " +  '"' + bsw_strand_bsc + '"') else ""} \
      ~{if defined(minimum_seed_length) then ("-k " +  '"' + minimum_seed_length + '"') else ""} \
      ~{if defined(band_width_banded) then ("-w " +  '"' + band_width_banded + '"') else ""} \
      ~{if defined(offdiagonal_xdropoff) then ("-d " +  '"' + offdiagonal_xdropoff + '"') else ""} \
      ~{if defined(look_longer_float) then ("-r " +  '"' + look_longer_float + '"') else ""} \
      ~{if defined(seed_occurrence_rd) then ("-y " +  '"' + seed_occurrence_rd + '"') else ""} \
      ~{if defined(var_8) then ("-J " +  '"' + var_8 + '"') else ""} \
      ~{if defined(var_9) then ("-K " +  '"' + var_9 + '"') else ""} \
      ~{if defined(min_base_quality) then ("-z " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(five) then ("-5 " +  '"' + five + '"') else ""} \
      ~{if defined(three) then ("-3 " +  '"' + three + '"') else ""} \
      ~{if defined(skip_seeds_more) then ("-c " +  '"' + skip_seeds_more + '"') else ""} \
      ~{if defined(drop_chains_shorter) then ("-D " +  '"' + drop_chains_shorter + '"') else ""} \
      ~{if defined(discard_chain_shorter) then ("-W " +  '"' + discard_chain_shorter + '"') else ""} \
      ~{if defined(perform_most_rounds) then ("-m " +  '"' + perform_most_rounds + '"') else ""} \
      ~{true="-S" false="" skip_mate_rescue} \
      ~{true="-P" false="" skip_pairing_mate} \
      ~{true="-e" false="" discard_fulllength_exact} \
      ~{if defined(score_sequence_match) then ("-A " +  '"' + score_sequence_match + '"') else ""} \
      ~{if defined(penalty_for_mismatch) then ("-B " +  '"' + penalty_for_mismatch + '"') else ""} \
      ~{if defined(gap_open_penalties) then ("-O " +  '"' + gap_open_penalties + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("-E " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(penalty_end_clipping) then ("-L " +  '"' + penalty_end_clipping + '"') else ""} \
      ~{if defined(penalty_unpaired_read) then ("-U " +  '"' + penalty_unpaired_read + '"') else ""} \
      ~{true="-i" false="" turn_autoinference_alt} \
      ~{true="-p" false="" smart_pairing_ignoring} \
      ~{if defined(read_group_line) then ("-R " +  '"' + read_group_line + '"') else ""} \
      ~{true="-F" false="" suppress_sam_output} \
      ~{if defined(insert_str_header) then ("-H " +  '"' + insert_str_header + '"') else ""} \
      ~{true="-j" false="" treat_alt_contigs} \
      ~{true="-q" false="" modify_mapq_supplementary} \
      ~{if defined(verbose_level_error) then ("-v " +  '"' + verbose_level_error + '"') else ""} \
      ~{if defined(minimum_score_output) then ("-T " +  '"' + minimum_score_output + '"') else ""} \
      ~{if defined(maximum_number_hits) then ("-h " +  '"' + maximum_number_hits + '"') else ""} \
      ~{true="-a" false="" output_alignments_unpaired} \
      ~{true="-C" false="" append_fastafastq_comment} \
      ~{true="-V" false="" output_reference_header} \
      ~{true="-Y" false="" use_soft_clipping} \
      ~{true="-M" false="" mark_shorter_split} \
      ~{if defined(specify_mean_deviation) then ("-I " +  '"' + specify_mean_deviation + '"') else ""}
  >>>
  parameter_meta {
    number_of_threads: "number of threads [1]"
    pe_read_parent: "For PE, read 1 to parent, read 2 to daughter (1, directional library); read1 and read 2 to both (0: default, nondirectional library); For SE, parent (1); daughter (3); both (0, default); Def: parent (bisulfite treated strand), daughter (synthesized strand)"
    bsw_strand_bsc: "1: BSW strand; 3: BSC strand; 0 (default): both; (libraries targeting either BSW or BSC are unseen so far!)"
    minimum_seed_length: "minimum seed length [19]"
    band_width_banded: "band width for banded alignment [100]"
    offdiagonal_xdropoff: "off-diagonal X-dropoff [100]"
    look_longer_float: "look for internal seeds inside a seed longer than {-k} * FLOAT [1.5]"
    seed_occurrence_rd: "seed occurrence for the 3rd round seeding [20]"
    var_8: "adaptor of read 1 (fastq direction)"
    var_9: "adaptor of read 2 (fastq direction)"
    min_base_quality: "min base quality to keep from both ends of reads [0]"
    five: "number of extra bases to clip from 5'-end [0]"
    three: "number of extra bases to clip from 3'-end [0]"
    skip_seeds_more: "skip seeds with more than INT occurrences [500]"
    drop_chains_shorter: "drop chains shorter than FLOAT fraction of the longest overlapping chain [0.50]"
    discard_chain_shorter: "discard a chain if seeded bases shorter than INT [0]"
    perform_most_rounds: "perform at most INT rounds of mate rescues for a read [50]"
    skip_mate_rescue: "skip mate rescue"
    skip_pairing_mate: "skip pairing; mate rescue performed unless -S also in use"
    discard_fulllength_exact: "discard full-length exact matches"
    score_sequence_match: "score for a sequence match, which scales options -TdBOELU unless overridden [1]"
    penalty_for_mismatch: "penalty for a mismatch [2]"
    gap_open_penalties: "gap open penalties for deletions and insertions [6,6]"
    gap_extension_penalty: "gap extension penalty; a gap of size k cost '{-O} + {-E}*k' [1,1]"
    penalty_end_clipping: "penalty for 5'- and 3'-end clipping [10,10]"
    penalty_unpaired_read: "penalty for an unpaired read pair [17]"
    turn_autoinference_alt: "turn off autoinference of ALT chromosomes."
    smart_pairing_ignoring: "smart pairing (ignoring in2.fq)"
    read_group_line: "read group header line such as '@RG\tID:foo\tSM:bar' [null]"
    suppress_sam_output: "suppress SAM header output"
    insert_str_header: "insert STR to header if it starts with @; or insert lines in FILE [null]"
    treat_alt_contigs: "treat ALT contigs as part of the primary assembly (i.e. ignore <idxbase>.alt file)"
    modify_mapq_supplementary: "don't modify mapQ of supplementary alignments."
    verbose_level_error: "verbose level:  1=error, 2=warning, 3=message, 4+=debugging [3]"
    minimum_score_output: "minimum score to output [30]"
    maximum_number_hits: "maximum number of hits output in XA [5,5]"
    output_alignments_unpaired: "output all alignments for SE or unpaired PE"
    append_fastafastq_comment: "append FASTA/FASTQ comment to SAM output"
    output_reference_header: "output the reference FASTA header in the XR tag"
    use_soft_clipping: "use soft clipping for supplementary alignments"
    mark_shorter_split: "mark shorter split hits as secondary"
    specify_mean_deviation: "specify the mean, standard deviation (10% of the mean if absent), max (4 sigma from the mean if absent) and min of insert size distribution.FR orientation only [inferred]"
    idx_base: ""
    in_one_dot_fq: ""
    in_two_dot_fq: ""
  }
}