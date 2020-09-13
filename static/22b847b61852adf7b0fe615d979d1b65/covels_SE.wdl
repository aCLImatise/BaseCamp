version 1.0

task CovelsSE {
  input {
    Boolean? complementary_strand_too
    Float? set_background_expected
    File? save_hits_file
    String? set_score_threshold
    Int? set_window_size
    File? save_name_processed
    Boolean? set_epsilon_fast
    Boolean? fast_heuristic_search
    Boolean? options
    String cove_ls
    File cm_file
    String seq_file
  }
  command <<<
    covels_SE \
      ~{cove_ls} \
      ~{cm_file} \
      ~{seq_file} \
      ~{if (complementary_strand_too) then "-c" else ""} \
      ~{if defined(set_background_expected) then ("-g " +  '"' + set_background_expected + '"') else ""} \
      ~{if defined(save_hits_file) then ("-o " +  '"' + save_hits_file + '"') else ""} \
      ~{if defined(set_score_threshold) then ("-t " +  '"' + set_score_threshold + '"') else ""} \
      ~{if defined(set_window_size) then ("-w " +  '"' + set_window_size + '"') else ""} \
      ~{if defined(save_name_processed) then ("-D " +  '"' + save_name_processed + '"') else ""} \
      ~{if (set_epsilon_fast) then "-E" else ""} \
      ~{if (fast_heuristic_search) then "-F" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    complementary_strand_too: ": do complementary strand too"
    set_background_expected: ": set background expected GC content (0.5 default)"
    save_hits_file: ": save hits in <file>"
    set_score_threshold: ": set score reporting threshold"
    set_window_size: ": set scanning window size"
    save_name_processed: ": save name of last sequence processed"
    set_epsilon_fast: ": set epsilon for fast search"
    fast_heuristic_search: ": fast heuristic search"
    options: ""
    cove_ls: ""
    cm_file: ""
    seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}