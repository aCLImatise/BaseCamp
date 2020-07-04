version 1.0

task CovelsSE {
  input {
    Boolean? complementary_strand_too
    String? set_background_expected
    File? save_hits_file
    String? set_score_threshold
    String? set_scanning_size
    File? save_name_last
    Boolean? set_epsilon_fast
    Boolean? fast_heuristic_search
    Boolean? options
    String cove_ls
    String cm_file
    String seq_file
  }
  command <<<
    covels-SE \
      ~{cove_ls} \
      ~{cm_file} \
      ~{seq_file} \
      ~{true="-c" false="" complementary_strand_too} \
      ~{if defined(set_background_expected) then ("-g " +  '"' + set_background_expected + '"') else ""} \
      ~{if defined(save_hits_file) then ("-o " +  '"' + save_hits_file + '"') else ""} \
      ~{if defined(set_score_threshold) then ("-t " +  '"' + set_score_threshold + '"') else ""} \
      ~{if defined(set_scanning_size) then ("-w " +  '"' + set_scanning_size + '"') else ""} \
      ~{if defined(save_name_last) then ("-D " +  '"' + save_name_last + '"') else ""} \
      ~{true="-E" false="" set_epsilon_fast} \
      ~{true="-F" false="" fast_heuristic_search} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    complementary_strand_too: ": do complementary strand too"
    set_background_expected: ": set background expected GC content (0.5 default)"
    save_hits_file: ": save hits in <file>"
    set_score_threshold: ": set score reporting threshold"
    set_scanning_size: ": set scanning window size"
    save_name_last: ": save name of last sequence processed"
    set_epsilon_fast: ": set epsilon for fast search"
    fast_heuristic_search: ": fast heuristic search"
    options: ""
    cove_ls: ""
    cm_file: ""
    seq_file: ""
  }
}