version 1.0

task CovelsSE {
  input {
    Boolean? do_complementary_strand
    Float? set_background_expected
    File? save_hits_file
    String? set_reporting_threshold
    Int? set_scanning_size
    File? save_name_last
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
      ~{if (do_complementary_strand) then "-c" else ""} \
      ~{if defined(set_background_expected) then ("-g " +  '"' + set_background_expected + '"') else ""} \
      ~{if defined(save_hits_file) then ("-o " +  '"' + save_hits_file + '"') else ""} \
      ~{if defined(set_reporting_threshold) then ("-t " +  '"' + set_reporting_threshold + '"') else ""} \
      ~{if defined(set_scanning_size) then ("-w " +  '"' + set_scanning_size + '"') else ""} \
      ~{if defined(save_name_last) then ("-D " +  '"' + save_name_last + '"') else ""} \
      ~{if (set_epsilon_fast) then "-E" else ""} \
      ~{if (fast_heuristic_search) then "-F" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/trnascan-se:2.0.7--pl526h516909a_0"
  }
  parameter_meta {
    do_complementary_strand: ": do complementary strand too"
    set_background_expected: ": set background expected GC content (0.5 default)"
    save_hits_file: ": save hits in <file>"
    set_reporting_threshold: ": set score reporting threshold"
    set_scanning_size: ": set scanning window size"
    save_name_last: ": save name of last sequence processed"
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