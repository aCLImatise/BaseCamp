version 1.0

task Minialign {
  input {
    String? load_preset_params
    Int? number_of_threads
    Boolean? switch_alignment_mode
    Boolean? show_version_number
    Int? kmer_size
    Int? minimizer_window_size
    File? dump_index_file
    File? load_index_file
    Int? match_award
    Int? mismatch_penalty
    Int? gap_open_penalty
    Int? gap_extension_penalty
    Int? minimum_alignment_score
    Int? minimum_alignment_score_ratio
    Int? output_format_
    Boolean? include_quality_string
    Int? read_group_line
    String? list_optional_tags
    String first
    String trial
  }
  command <<<
    minialign \
      ~{first} \
      ~{trial} \
      ~{if defined(load_preset_params) then ("-x " +  '"' + load_preset_params + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if (switch_alignment_mode) then "-X" else ""} \
      ~{if (show_version_number) then "-v" else ""} \
      ~{if defined(kmer_size) then ("-k " +  '"' + kmer_size + '"') else ""} \
      ~{if defined(minimizer_window_size) then ("-w " +  '"' + minimizer_window_size + '"') else ""} \
      ~{if defined(dump_index_file) then ("-d " +  '"' + dump_index_file + '"') else ""} \
      ~{if defined(load_index_file) then ("-l " +  '"' + load_index_file + '"') else ""} \
      ~{if defined(match_award) then ("-a " +  '"' + match_award + '"') else ""} \
      ~{if defined(mismatch_penalty) then ("-b " +  '"' + mismatch_penalty + '"') else ""} \
      ~{if defined(gap_open_penalty) then ("-p " +  '"' + gap_open_penalty + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("-q " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(minimum_alignment_score) then ("-s " +  '"' + minimum_alignment_score + '"') else ""} \
      ~{if defined(minimum_alignment_score_ratio) then ("-m " +  '"' + minimum_alignment_score_ratio + '"') else ""} \
      ~{if defined(output_format_) then ("-O " +  '"' + output_format_ + '"') else ""} \
      ~{if (include_quality_string) then "-Q" else ""} \
      ~{if defined(read_group_line) then ("-R " +  '"' + read_group_line + '"') else ""} \
      ~{if defined(list_optional_tags) then ("-T " +  '"' + list_optional_tags + '"') else ""}
  >>>
  parameter_meta {
    load_preset_params: "load preset params {pacbio,ont,ava} [ont]"
    number_of_threads: "number of threads [1]"
    switch_alignment_mode: "switch to all-versus-all alignment mode"
    show_version_number: "show version number [0.5.2-unknown]"
    kmer_size: "k-mer size [15]"
    minimizer_window_size: "minimizer window size [{-k}*2/3]"
    dump_index_file: "dump index to FILE []"
    load_index_file: "load index from FILE [] (overriding -k and -w)"
    match_award: "match award [1]"
    mismatch_penalty: "mismatch penalty [1]"
    gap_open_penalty: "gap open penalty [1]"
    gap_extension_penalty: "gap extension penalty [1]"
    minimum_alignment_score: "minimum alignment score [50]"
    minimum_alignment_score_ratio: "minimum alignment score ratio [0.30]"
    output_format_: "output format {sam,maf,blast6,blasr1,blasr4,paf,mhap,falcon} [sam]"
    include_quality_string: "include quality string"
    read_group_line: "read group header line, like \\\"@RG\\tID:1\\\" []"
    list_optional_tags: ",...   list of optional tags: {RG,AS,XS,NM,NH,IH,SA,MD} []\\nRG is also inferred from -R\\nsupp. records are omitted when SA tag is enabled"
    first: ""
    trial: ""
  }
  output {
    File out_stdout = stdout()
  }
}