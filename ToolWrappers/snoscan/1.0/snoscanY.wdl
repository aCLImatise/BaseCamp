version 1.0

task SnoscanY {
  input {
    File? specify_methylation_sites
    String? save_candidates_outfile
    Boolean? save_snorna_sequences
    Int? set_minimim_length
    String? set_c_box
    String? set_d_prime
    String? set_final_cutoff
    Int? set_min_score
    Int? set_max_distance_c
    Int? set_min_distance
    Int? initiate_scan_def
    Int? set_max_distance_known
    Boolean? _verbose_output
    Boolean? options
    String sno_scan
    File rrna_sequence_file
    File query_sequence_file
  }
  command <<<
    snoscanY \
      ~{sno_scan} \
      ~{rrna_sequence_file} \
      ~{query_sequence_file} \
      ~{if defined(specify_methylation_sites) then ("-m " +  '"' + specify_methylation_sites + '"') else ""} \
      ~{if defined(save_candidates_outfile) then ("-o " +  '"' + save_candidates_outfile + '"') else ""} \
      ~{if (save_snorna_sequences) then "-s" else ""} \
      ~{if defined(set_minimim_length) then ("-l " +  '"' + set_minimim_length + '"') else ""} \
      ~{if defined(set_c_box) then ("-C " +  '"' + set_c_box + '"') else ""} \
      ~{if defined(set_d_prime) then ("-D " +  '"' + set_d_prime + '"') else ""} \
      ~{if defined(set_final_cutoff) then ("-X " +  '"' + set_final_cutoff + '"') else ""} \
      ~{if defined(set_min_score) then ("-c " +  '"' + set_min_score + '"') else ""} \
      ~{if defined(set_max_distance_c) then ("-d " +  '"' + set_max_distance_c + '"') else ""} \
      ~{if defined(set_min_distance) then ("-p " +  '"' + set_min_distance + '"') else ""} \
      ~{if defined(initiate_scan_def) then ("-i " +  '"' + initiate_scan_def + '"') else ""} \
      ~{if defined(set_max_distance_known) then ("-M " +  '"' + set_max_distance_known + '"') else ""} \
      ~{if (_verbose_output) then "-V" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/snoscan:1.0--pl526h516909a_0"
  }
  parameter_meta {
    specify_methylation_sites: ": specify methylation sites"
    save_candidates_outfile: ": save candidates in <outfile>"
    save_snorna_sequences: ": save snoRNA sequences with hit info"
    set_minimim_length: ": set minimim length for snoRNA-rRNA pairing (def=9bp)"
    set_c_box: ": set C Box score cutoff to <Score>"
    set_d_prime: ": set D prime Box score cutoff to <Score>"
    set_final_cutoff: ": set final score cutoff to <Score>"
    set_min_score: ": set min score for complementary region match"
    set_max_distance_c: ": set max distance between C & D boxes"
    set_min_distance: ": set min distance between rRNA match &\\nD box when D prime box is present (def=10bp)"
    initiate_scan_def: ": Initiate scan at <position> in sequence (def=1)"
    set_max_distance_known: ": set max distance to known meth site (Def=0)"
    _verbose_output: ": verbose output"
    options: ""
    sno_scan: ""
    rrna_sequence_file: ""
    query_sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}