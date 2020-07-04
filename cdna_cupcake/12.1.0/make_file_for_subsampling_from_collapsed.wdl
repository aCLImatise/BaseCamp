version 1.0

task MakeFileForSubsamplingFromCollapsed.py {
  input {
    String? input_prefix
    String? output_prefix
    String? match_an_not_parsed
    String? sq_anti_class
    String? demux
    Boolean? include_single_exons
    String make
    String subsample_ready
    File file
    String from
    String iso_seq
    String collapsed
    String var_output
  }
  command <<<
    make_file_for_subsampling_from_collapsed.py \
      ~{make} \
      ~{subsample_ready} \
      ~{file} \
      ~{from} \
      ~{iso_seq} \
      ~{collapsed} \
      ~{var_output} \
      ~{if defined(input_prefix) then ("--input_prefix " +  '"' + input_prefix + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(match_an_not_parsed) then ("--matchAnnot_parsed " +  '"' + match_an_not_parsed + '"') else ""} \
      ~{if defined(sq_anti_class) then ("--sqanti_class " +  '"' + sq_anti_class + '"') else ""} \
      ~{if defined(demux) then ("--demux " +  '"' + demux + '"') else ""} \
      ~{true="--include_single_exons" false="" include_single_exons}
  >>>
  parameter_meta {
    input_prefix: "Collapsed prefix (default: hq_isoforms.fastq.no5merge. collapsed.min_fl_2.filtered)"
    output_prefix: "Output prefix (default: output.for_subsampling"
    match_an_not_parsed: "MatchAnnot parsed output (default: None)"
    sq_anti_class: "SQANTI classification file (default: None)"
    demux: "Demuxed FL count file - if provided, will be used instead of the <input_prefix>.abundance.txt file"
    include_single_exons: "Include single exons (default: OFF)"
    make: ""
    subsample_ready: ""
    file: ""
    from: ""
    iso_seq: ""
    collapsed: ""
    var_output: ""
  }
}