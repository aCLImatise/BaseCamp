version 1.0

task Winnowmap {
  input {
    Boolean? use_homopolymercompressed_kmer
    Int? kmer_size_larger
    Int? minimizer_window_size
    File? input_file_containing
    Int? split_index_num
    File? dump_index_file
    Float? filter_top_fraction
    Int? stop_chain_enlongation
    Int? max_intron_length
    Int? max_fragment_length
    Int? bandwidth_used_dpbased
    Int? minimal_number_minimizers
    Int? minimal_chaining_score
    Boolean? skip_self_mappings
    Float? min_secondarytoprimary_score
    Boolean? sv_off
    Int? matching_score
    Int? mismatch_penalty
    Array[Int] gap_open_penalty
    Array[Int] gap_extension_penalty
    Array[Int] zdrop_score_inversion
    Int? minimal_peak_dp
    String? how_find_strands
    Boolean? output_sam_format
    File? output_alignments_file
    Boolean? write_cigar_ops
    String? sam_read_line
    Boolean? output_cigar_paf
    Boolean? cs
    Boolean? md
    Boolean? eq_x
    Boolean? use_soft_clipping
    Int? manually_set_pthread
    Int? minibatch_size_mapping
    Int? preset_always_applied
    String target_dot_fa
  }
  command <<<
    winnowmap \
      ~{target_dot_fa} \
      ~{if (use_homopolymercompressed_kmer) then "-H" else ""} \
      ~{if defined(kmer_size_larger) then ("-k " +  '"' + kmer_size_larger + '"') else ""} \
      ~{if defined(minimizer_window_size) then ("-w " +  '"' + minimizer_window_size + '"') else ""} \
      ~{if defined(input_file_containing) then ("-W " +  '"' + input_file_containing + '"') else ""} \
      ~{if defined(split_index_num) then ("-I " +  '"' + split_index_num + '"') else ""} \
      ~{if defined(dump_index_file) then ("-d " +  '"' + dump_index_file + '"') else ""} \
      ~{if defined(filter_top_fraction) then ("-f " +  '"' + filter_top_fraction + '"') else ""} \
      ~{if defined(stop_chain_enlongation) then ("-g " +  '"' + stop_chain_enlongation + '"') else ""} \
      ~{if defined(max_intron_length) then ("-G " +  '"' + max_intron_length + '"') else ""} \
      ~{if defined(max_fragment_length) then ("-F " +  '"' + max_fragment_length + '"') else ""} \
      ~{if defined(bandwidth_used_dpbased) then ("-r " +  '"' + bandwidth_used_dpbased + '"') else ""} \
      ~{if defined(minimal_number_minimizers) then ("-n " +  '"' + minimal_number_minimizers + '"') else ""} \
      ~{if defined(minimal_chaining_score) then ("-m " +  '"' + minimal_chaining_score + '"') else ""} \
      ~{if (skip_self_mappings) then "-X" else ""} \
      ~{if defined(min_secondarytoprimary_score) then ("-p " +  '"' + min_secondarytoprimary_score + '"') else ""} \
      ~{if (sv_off) then "--sv-off" else ""} \
      ~{if defined(matching_score) then ("-A " +  '"' + matching_score + '"') else ""} \
      ~{if defined(mismatch_penalty) then ("-B " +  '"' + mismatch_penalty + '"') else ""} \
      ~{if defined(gap_open_penalty) then ("-O " +  '"' + gap_open_penalty + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("-E " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(zdrop_score_inversion) then ("-z " +  '"' + zdrop_score_inversion + '"') else ""} \
      ~{if defined(minimal_peak_dp) then ("-s " +  '"' + minimal_peak_dp + '"') else ""} \
      ~{if defined(how_find_strands) then ("-u " +  '"' + how_find_strands + '"') else ""} \
      ~{if (output_sam_format) then "-a" else ""} \
      ~{if defined(output_alignments_file) then ("-o " +  '"' + output_alignments_file + '"') else ""} \
      ~{if (write_cigar_ops) then "-L" else ""} \
      ~{if defined(sam_read_line) then ("-R " +  '"' + sam_read_line + '"') else ""} \
      ~{if (output_cigar_paf) then "-c" else ""} \
      ~{if (cs) then "--cs" else ""} \
      ~{if (md) then "--MD" else ""} \
      ~{if (eq_x) then "--eqx" else ""} \
      ~{if (use_soft_clipping) then "-Y" else ""} \
      ~{if defined(manually_set_pthread) then ("-t " +  '"' + manually_set_pthread + '"') else ""} \
      ~{if defined(minibatch_size_mapping) then ("-K " +  '"' + minibatch_size_mapping + '"') else ""} \
      ~{if defined(preset_always_applied) then ("-x " +  '"' + preset_always_applied + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/winnowmap:2.01--h2e03b76_0"
  }
  parameter_meta {
    use_homopolymercompressed_kmer: "use homopolymer-compressed k-mer"
    kmer_size_larger: "k-mer size (no larger than 28) [15]"
    minimizer_window_size: "minimizer window size [50]"
    input_file_containing: "input file containing list of high freq. k-mers []"
    split_index_num: "split index for every ~NUM input bases [4G]"
    dump_index_file: "dump index to FILE []"
    filter_top_fraction: "filter out top FLOAT (<1) fraction of repetitive minimizers [0.0]"
    stop_chain_enlongation: "stop chain enlongation if there are no minimizers in INT-bp [5000]"
    max_intron_length: "max intron length (effective with -xsplice; changing -r) [200k]"
    max_fragment_length: "max fragment length (effective with -xsr or in the fragment mode) [800]"
    bandwidth_used_dpbased: "bandwidth used in chaining and DP-based alignment [500]"
    minimal_number_minimizers: "minimal number of minimizers on a chain [3]"
    minimal_chaining_score: "minimal chaining score (matching bases minus log gap penalty) [40]"
    skip_self_mappings: "skip self and dual mappings (for the all-vs-all mode)"
    min_secondarytoprimary_score: "min secondary-to-primary score ratio [0.8]"
    sv_off: "turn off SV-aware mode"
    matching_score: "matching score [2]"
    mismatch_penalty: "mismatch penalty [4]"
    gap_open_penalty: "gap open penalty [4,24]"
    gap_extension_penalty: "gap extension penalty; a k-long gap costs min{O1+k*E1,O2+k*E2} [2,1]"
    zdrop_score_inversion: "Z-drop score and inversion Z-drop score [400,200]"
    minimal_peak_dp: "minimal peak DP alignment score [80]"
    how_find_strands: "how to find GT-AG. f:transcript strand, b:both strands, n:don't match GT-AG [n]"
    output_sam_format: "output in the SAM format (PAF by default)"
    output_alignments_file: "output alignments to FILE [stdout]"
    write_cigar_ops: "write CIGAR with >65535 ops at the CG tag"
    sam_read_line: "SAM read group line in a format like '@RG\\tID:foo\\tSM:bar' []"
    output_cigar_paf: "output CIGAR in PAF"
    cs: "[=STR]   output the cs tag; STR is 'short' (if absent) or 'long' [none]"
    md: "output the MD tag"
    eq_x: "write =/X CIGAR operators"
    use_soft_clipping: "use soft clipping for supplementary alignments"
    manually_set_pthread: "manually set pthread count rather than automatically"
    minibatch_size_mapping: "minibatch size for mapping [1000M]"
    preset_always_applied: "preset (always applied before other options) []\\n- map-ont (ont-to-ref, uses default param)\\n- map-pb (hifi-to-ref, all defaults but does finer read fragmentation in SV-aware mapping)\\n- map-pb-clr (clr-to-ref, sets --sv-off)\\n- splice/splice:hq - long-read/Pacbio-CCS spliced alignment, sets --sv-off\\n- asm5/asm10/asm20 - asm-to-ref mapping\\n"
    target_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_alignments_file = "${in_output_alignments_file}"
  }
}