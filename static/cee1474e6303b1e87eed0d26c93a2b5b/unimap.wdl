version 1.0

task Unimap {
  input {
    Int? kmer_size_larger
    Int? minimizer_window_size
    Int? number_bits_bloom
    File? dump_index_file
    Int? high_kmer_occurrence
    Int? max_minimizer_occurrence
    Int? stop_chain_enlongation
    Int? max_intron_length
    Int? bandwidth_used_dpbased
    Int? minimal_number_minimizers
    Int? minimal_chaining_score
    Float? min_secondarytoprimary_score
    Array[Int] retain_most_int
    Int? matching_score
    Int? mismatch_penalty
    Array[Int] gap_open_penalty
    Array[Int] gap_extension_penalty
    Array[Int] zdrop_score_inversion
    Int? minimal_peak_dp
    String? how_find_strands
    Boolean? perform_basealignment_cigar
    Boolean? perform_basealignment_output
    File? output_alignments_file
    String? sam_read_line
    Boolean? cs
    Boolean? md
    Boolean? use_soft_clipping
    Int? number_of_threads
    Int? minibatch_size_mapping
    Float? preset_always_applied
    String target_dot_fa
  }
  command <<<
    unimap \
      ~{target_dot_fa} \
      ~{if defined(kmer_size_larger) then ("-k " +  '"' + kmer_size_larger + '"') else ""} \
      ~{if defined(minimizer_window_size) then ("-w " +  '"' + minimizer_window_size + '"') else ""} \
      ~{if defined(number_bits_bloom) then ("-b " +  '"' + number_bits_bloom + '"') else ""} \
      ~{if defined(dump_index_file) then ("-d " +  '"' + dump_index_file + '"') else ""} \
      ~{if defined(high_kmer_occurrence) then ("-F " +  '"' + high_kmer_occurrence + '"') else ""} \
      ~{if defined(max_minimizer_occurrence) then ("-f " +  '"' + max_minimizer_occurrence + '"') else ""} \
      ~{if defined(stop_chain_enlongation) then ("-g " +  '"' + stop_chain_enlongation + '"') else ""} \
      ~{if defined(max_intron_length) then ("-G " +  '"' + max_intron_length + '"') else ""} \
      ~{if defined(bandwidth_used_dpbased) then ("-r " +  '"' + bandwidth_used_dpbased + '"') else ""} \
      ~{if defined(minimal_number_minimizers) then ("-n " +  '"' + minimal_number_minimizers + '"') else ""} \
      ~{if defined(minimal_chaining_score) then ("-m " +  '"' + minimal_chaining_score + '"') else ""} \
      ~{if defined(min_secondarytoprimary_score) then ("-p " +  '"' + min_secondarytoprimary_score + '"') else ""} \
      ~{if defined(retain_most_int) then ("-N " +  '"' + retain_most_int + '"') else ""} \
      ~{if defined(matching_score) then ("-A " +  '"' + matching_score + '"') else ""} \
      ~{if defined(mismatch_penalty) then ("-B " +  '"' + mismatch_penalty + '"') else ""} \
      ~{if defined(gap_open_penalty) then ("-O " +  '"' + gap_open_penalty + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("-E " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(zdrop_score_inversion) then ("-z " +  '"' + zdrop_score_inversion + '"') else ""} \
      ~{if defined(minimal_peak_dp) then ("-s " +  '"' + minimal_peak_dp + '"') else ""} \
      ~{if defined(how_find_strands) then ("-u " +  '"' + how_find_strands + '"') else ""} \
      ~{if (perform_basealignment_cigar) then "-c" else ""} \
      ~{if (perform_basealignment_output) then "-a" else ""} \
      ~{if defined(output_alignments_file) then ("-o " +  '"' + output_alignments_file + '"') else ""} \
      ~{if defined(sam_read_line) then ("-R " +  '"' + sam_read_line + '"') else ""} \
      ~{if (cs) then "--cs" else ""} \
      ~{if (md) then "--MD" else ""} \
      ~{if (use_soft_clipping) then "-Y" else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(minibatch_size_mapping) then ("-K " +  '"' + minibatch_size_mapping + '"') else ""} \
      ~{if defined(preset_always_applied) then ("-x " +  '"' + preset_always_applied + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/unimap:0.1--hed695b0_0"
  }
  parameter_meta {
    kmer_size_larger: "k-mer size (no larger than 28) [21]"
    minimizer_window_size: "minimizer window size [11]"
    number_bits_bloom: "number of bits for bloom filter [35]"
    dump_index_file: "dump index to FILE []"
    high_kmer_occurrence: "high k-mer occurrence threshold when indexing [50]"
    max_minimizer_occurrence: "max minimizer occurrence [1000]"
    stop_chain_enlongation: "stop chain enlongation if there are no minimizers in INT-bp [5000]"
    max_intron_length: "max intron length (effective with -xsplice; changing -r) [200k]"
    bandwidth_used_dpbased: "bandwidth used in chaining and DP-based alignment [100000]"
    minimal_number_minimizers: "minimal number of minimizers on a chain [3]"
    minimal_chaining_score: "minimal chaining score (matching bases minus log gap penalty) [40]"
    min_secondarytoprimary_score: "min secondary-to-primary score ratio [0.8]"
    retain_most_int: "retain at most INT secondary alignments [10,25]"
    matching_score: "matching score [1]"
    mismatch_penalty: "mismatch penalty [3]"
    gap_open_penalty: "gap open penalty [5,25]"
    gap_extension_penalty: "gap extension penalty; a k-long gap costs min{O1+k*E1,O2+k*E2} [2,1]"
    zdrop_score_inversion: "Z-drop score and inversion Z-drop score [400,200]"
    minimal_peak_dp: "minimal peak DP alignment score [200]"
    how_find_strands: "how to find GT-AG. f:transcript strand, b:both strands, n:don't match GT-AG [n]"
    perform_basealignment_cigar: "perform base-alignment and output CIGAR in the PAF format"
    perform_basealignment_output: "perform base-alignment and output in SAM (PAF by default)"
    output_alignments_file: "output alignments to FILE [stdout]"
    sam_read_line: "SAM read group line in a format like '@RG\\tID:foo\\tSM:bar' []"
    cs: "[=STR]   output the cs tag; STR is 'short' (if absent) or 'long' [none]"
    md: "output the MD tag"
    use_soft_clipping: "use soft clipping for supplementary alignments"
    number_of_threads: "number of threads [3]"
    minibatch_size_mapping: "minibatch size for mapping [1G]"
    preset_always_applied: "preset (always applied before other options; see unimap.1 for details) []\\n- ont/clr:  --rmq=no -r10k -A2 -B4 -O4,24 -E2,1 -z400,200 -s80 -K500M\\n- hifi/ccs: --rmq=no -r10k -A1 -B4 -O6,26 -E2,1 -w21 -K500M\\n- asm5:  -A1 -B19 -O39,81 -E2,1 -N50 -w21\\n- asm10: -A1 -B9  -O16,41 -E2,1 -N50 -w21\\n- asm20: -A1 -B4  -O6,26  -E2,1 -N50\\n- splice:hq/splice: spliced alignment"
    target_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_alignments_file = "${in_output_alignments_file}"
  }
}