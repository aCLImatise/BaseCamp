version 1.0

task MakeFileForSubsamplingFromCollapsedpy {
  input {
    Int? input_prefix
    String? output_prefix
    String? match_an_not_parsed
    File? sq_anti_class
    File? demux
    Boolean? include_single_exons
    String make
    String subsample_ready
    File var_file
    String from
    String iso_seq
    String collapsed
    String var_output
  }
  command <<<
    make_file_for_subsampling_from_collapsed_py \
      ~{make} \
      ~{subsample_ready} \
      ~{var_file} \
      ~{from} \
      ~{iso_seq} \
      ~{collapsed} \
      ~{var_output} \
      ~{if defined(input_prefix) then ("--input_prefix " +  '"' + input_prefix + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(match_an_not_parsed) then ("--matchAnnot_parsed " +  '"' + match_an_not_parsed + '"') else ""} \
      ~{if defined(sq_anti_class) then ("--sqanti_class " +  '"' + sq_anti_class + '"') else ""} \
      ~{if defined(demux) then ("--demux " +  '"' + demux + '"') else ""} \
      ~{if (include_single_exons) then "--include_single_exons" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
  }
  parameter_meta {
    input_prefix: "Collapsed prefix (default: hq_isoforms.fastq.no5merge.\\ncollapsed.min_fl_2.filtered)"
    output_prefix: "Output prefix (default: output.for_subsampling"
    match_an_not_parsed: "MatchAnnot parsed output (default: None)"
    sq_anti_class: "SQANTI classification file (default: None)"
    demux: "Demuxed FL count file - if provided, will be used\\ninstead of the <input_prefix>.abundance.txt file"
    include_single_exons: "Include single exons (default: OFF)\\n"
    make: ""
    subsample_ready: ""
    var_file: ""
    from: ""
    iso_seq: ""
    collapsed: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}