version 1.0

task PaladinAlign {
  input {
    Boolean? disable_orf_detection
    Boolean? disable_brute_force
    Boolean? adjust_minimum_value
    Int? minimum_orf_length_accepted_constant
    Float? minimum_orf_length_accepted_percentage
    Int? z
    Int? number_of_threads
    Int? minimum_seed_length
    Int? offdiagonal_xdropoff
    Float? look_longer_float
    Int? seed_occurrence_rd
    Int? skip_seeds_more
    Float? drop_chains_shorter
    Int? discard_chain_shorter
    Int? perform_most_rounds
    Boolean? discard_fulllength_exact
    Int? score_sequence_match
    Int? penalty_for_mismatch
    Array[Int] gap_open_penalties
    Array[Int] gap_extension_penalty
    Array[Int] penalty_end_clipping
    Int? penalty_unpaired_read
    String? read_type_changes
    String? activate_paladin_reporting
    Int? report_type_generated
    String? http_socks_proxy
    Boolean? generate_detected_sequence
    Boolean? keep_protein_sequence
    String? read_group_line
    String? insert_str_header
    Boolean? treat_alt_contigs
    Int? verbose_level_error
    Int? minimum_score_output
    Array[Int] there_int_hits
    Boolean? output_alignments_unpaired
    Boolean? append_fastafastq_comment
    Boolean? output_reference_header
    Boolean? use_soft_clipping
    Boolean? mark_shorter_split
    Array[Float] specify_mean_deviation
    String idx_base
    String in_dot_fq
  }
  command <<<
    paladin align \
      ~{idx_base} \
      ~{in_dot_fq} \
      ~{true="-p" false="" disable_orf_detection} \
      ~{true="-b" false="" disable_brute_force} \
      ~{true="-J" false="" adjust_minimum_value} \
      ~{if defined(minimum_orf_length_accepted_constant) then ("-f " +  '"' + minimum_orf_length_accepted_constant + '"') else ""} \
      ~{if defined(minimum_orf_length_accepted_percentage) then ("-F " +  '"' + minimum_orf_length_accepted_percentage + '"') else ""} \
      ~{if defined(z) then ("-z " +  '"' + z + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(minimum_seed_length) then ("-k " +  '"' + minimum_seed_length + '"') else ""} \
      ~{if defined(offdiagonal_xdropoff) then ("-d " +  '"' + offdiagonal_xdropoff + '"') else ""} \
      ~{if defined(look_longer_float) then ("-r " +  '"' + look_longer_float + '"') else ""} \
      ~{if defined(seed_occurrence_rd) then ("-y " +  '"' + seed_occurrence_rd + '"') else ""} \
      ~{if defined(skip_seeds_more) then ("-c " +  '"' + skip_seeds_more + '"') else ""} \
      ~{if defined(drop_chains_shorter) then ("-D " +  '"' + drop_chains_shorter + '"') else ""} \
      ~{if defined(discard_chain_shorter) then ("-W " +  '"' + discard_chain_shorter + '"') else ""} \
      ~{if defined(perform_most_rounds) then ("-m " +  '"' + perform_most_rounds + '"') else ""} \
      ~{true="-e" false="" discard_fulllength_exact} \
      ~{if defined(score_sequence_match) then ("-A " +  '"' + score_sequence_match + '"') else ""} \
      ~{if defined(penalty_for_mismatch) then ("-B " +  '"' + penalty_for_mismatch + '"') else ""} \
      ~{if defined(gap_open_penalties) then ("-O " +  '"' + gap_open_penalties + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("-E " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(penalty_end_clipping) then ("-L " +  '"' + penalty_end_clipping + '"') else ""} \
      ~{if defined(penalty_unpaired_read) then ("-U " +  '"' + penalty_unpaired_read + '"') else ""} \
      ~{if defined(read_type_changes) then ("-x " +  '"' + read_type_changes + '"') else ""} \
      ~{if defined(activate_paladin_reporting) then ("-o " +  '"' + activate_paladin_reporting + '"') else ""} \
      ~{if defined(report_type_generated) then ("-u " +  '"' + report_type_generated + '"') else ""} \
      ~{if defined(http_socks_proxy) then ("-P " +  '"' + http_socks_proxy + '"') else ""} \
      ~{true="-g" false="" generate_detected_sequence} \
      ~{true="-n" false="" keep_protein_sequence} \
      ~{if defined(read_group_line) then ("-R " +  '"' + read_group_line + '"') else ""} \
      ~{if defined(insert_str_header) then ("-H " +  '"' + insert_str_header + '"') else ""} \
      ~{true="-j" false="" treat_alt_contigs} \
      ~{if defined(verbose_level_error) then ("-v " +  '"' + verbose_level_error + '"') else ""} \
      ~{if defined(minimum_score_output) then ("-T " +  '"' + minimum_score_output + '"') else ""} \
      ~{if defined(there_int_hits) then ("-h " +  '"' + there_int_hits + '"') else ""} \
      ~{true="-a" false="" output_alignments_unpaired} \
      ~{true="-C" false="" append_fastafastq_comment} \
      ~{true="-V" false="" output_reference_header} \
      ~{true="-Y" false="" use_soft_clipping} \
      ~{true="-M" false="" mark_shorter_split} \
      ~{if defined(specify_mean_deviation) then ("-I " +  '"' + specify_mean_deviation + '"') else ""}
  >>>
  parameter_meta {
    disable_orf_detection: "disable ORF detection and treat input as protein sequence"
    disable_brute_force: "disable brute force ORF detection"
    adjust_minimum_value: "do not adjust minimum ORF length (constant value) for shorter read lengths"
    minimum_orf_length_accepted_constant: "minimum ORF length accepted (as constant value) [250]"
    minimum_orf_length_accepted_percentage: "minimum ORF length accepted (as percentage of read length) [0.00]"
    z: "[,...]  Genetic code used for translation (-z ? for full list) [1]"
    number_of_threads: "number of threads [1]"
    minimum_seed_length: "minimum seed length [11]"
    offdiagonal_xdropoff: "off-diagonal X-dropoff [100]"
    look_longer_float: "look for internal seeds inside a seed longer than {-k} * FLOAT [1.5]"
    seed_occurrence_rd: "seed occurrence for the 3rd round seeding [20]"
    skip_seeds_more: "skip seeds with more than INT occurrences [500]"
    drop_chains_shorter: "drop chains shorter than FLOAT fraction of the longest overlapping chain [0.50]"
    discard_chain_shorter: "discard a chain if seeded bases shorter than INT [0]"
    perform_most_rounds: "perform at most INT rounds of mate rescues for each read [50]"
    discard_fulllength_exact: "discard full-length exact matches"
    score_sequence_match: "score for a sequence match, which scales options -TdBOELU unless overridden [1]"
    penalty_for_mismatch: "penalty for a mismatch [3]"
    gap_open_penalties: "gap open penalties for deletions and insertions [0,0]"
    gap_extension_penalty: "gap extension penalty; a gap of size k cost '{-O} + {-E}*k' [1,1]"
    penalty_end_clipping: "penalty for 5'- and 3'-end clipping [0,0]"
    penalty_unpaired_read: "penalty for an unpaired read pair [17]"
    read_type_changes: "read type. Setting -x changes multiple parameters unless overriden [null] pacbio: -k17 -W40 -r10 -A1 -B1 -O1 -E1 -L0  (PacBio reads to ref) ont2d: -k14 -W20 -r10 -A1 -B1 -O1 -E1 -L0  (Oxford Nanopore 2D-reads to ref) intractg: -B9 -O16 -L5  (intra-species contigs to ref)"
    activate_paladin_reporting: "activate PALADIN reporting using STR as an output file prefix.  Files generated as follows: STR.sam - alignment data (will not be sent to stdout) STR_uniprot.tsv - Tab delimited UniProt report (normal alignment mode) STR_uniprot_primary.tsv - Tab delimited UniProt report, primary alignments (all alignments mode) STR_uniprot_secondary.tsv - Tab delimited UniProt report, secondary alignments (all alignments mode)"
    report_type_generated: "report type generated when using reporting and a UniProt reference [1] 0: Simple ID summary report 1: Detailed report (Contacts uniprot.org)"
    http_socks_proxy: "HTTP or SOCKS proxy address"
    generate_detected_sequence: "generate detected ORF nucleotide sequence FASTA"
    keep_protein_sequence: "keep protein sequence after alignment"
    read_group_line: "read group header line such as '@RG\tID:foo\tSM:bar' [null]"
    insert_str_header: "insert STR to header if it starts with @; or insert lines in FILE [null]"
    treat_alt_contigs: "treat ALT contigs as part of the primary assembly (i.e. ignore <idxbase>.alt file)"
    verbose_level_error: "verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]"
    minimum_score_output: "minimum score to output [15]"
    there_int_hits: "if there are <INT hits with score >80% of the max score, output all in XA [5,200]"
    output_alignments_unpaired: "output all alignments for SE or unpaired PE"
    append_fastafastq_comment: "append FASTA/FASTQ comment to SAM output"
    output_reference_header: "output the reference FASTA header in the XR tag"
    use_soft_clipping: "use soft clipping for supplementary alignments"
    mark_shorter_split: "mark shorter split hits as secondary"
    specify_mean_deviation: "specify the mean, standard deviation (10% of the mean if absent), max (4 sigma from the mean if absent) and min of the insert size distribution. FR orientation only. [inferred]"
    idx_base: ""
    in_dot_fq: ""
  }
}