version 1.0

task RodeoMainpy {
  input {
    Directory? output_dir
    Boolean? c
    Boolean? hmm
    Int? num_cores
    Int? precursor_max
    Int? precursor_min
    String? overlap
    String? fetch_type
    String? fetch_n
    Int? fetch_distance
    Boolean? pt
    Boolean? evaluate_all
    Boolean? exhaustive
    Boolean? print_precursors
    Boolean? web
    String main
    String rodeo
    String app_dot
    String? conf_file
  }
  command <<<
    rodeo_main_py \
      ~{main} \
      ~{rodeo} \
      ~{app_dot} \
      ~{conf_file} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (c) then "-c" else ""} \
      ~{if (hmm) then "-hmm" else ""} \
      ~{if defined(num_cores) then ("--num_cores " +  '"' + num_cores + '"') else ""} \
      ~{if defined(precursor_max) then ("--precursor_max " +  '"' + precursor_max + '"') else ""} \
      ~{if defined(precursor_min) then ("--precursor_min " +  '"' + precursor_min + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(fetch_type) then ("--fetch_type " +  '"' + fetch_type + '"') else ""} \
      ~{if defined(fetch_n) then ("--fetch_n " +  '"' + fetch_n + '"') else ""} \
      ~{if defined(fetch_distance) then ("--fetch_distance " +  '"' + fetch_distance + '"') else ""} \
      ~{if (pt) then "-pt" else ""} \
      ~{if (evaluate_all) then "--evaluate_all" else ""} \
      ~{if (exhaustive) then "--exhaustive" else ""} \
      ~{if (print_precursors) then "--print_precursors" else ""} \
      ~{if (web) then "--web" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rodeo:2.3.3--0"
  }
  parameter_meta {
    output_dir: "Name of output folder"
    c: "[CONF_FILE [CONF_FILE ...]], --conf_file [CONF_FILE [CONF_FILE ...]]\\nMaximum size of potential ORF"
    hmm: "[CUSTOM_HMM [CUSTOM_HMM ...]], --custom_hmm [CUSTOM_HMM [CUSTOM_HMM ...]]\\nMaximum size of potential ORF"
    num_cores: "Number of cores to use."
    precursor_max: "Maximum size of potential ORF"
    precursor_min: "Minimum size of potential ORF"
    overlap: "Maximum overlap of search with existing CDSs"
    fetch_type: "Type of window specification. 'cds' will make the\\nwindow +/- n CDSs from the query. 'nucs' will make the\\nwindow +/- n nucleotides from the query"
    fetch_n: "The 'n' variable for the -ft=orfs,cds"
    fetch_distance: "Number of nucleotides to fetch outside of window"
    pt: "[PEPTIDE_TYPES [PEPTIDE_TYPES ...]], --peptide_types [PEPTIDE_TYPES [PEPTIDE_TYPES ...]]\\nType(s) of peptides to score."
    evaluate_all: "Evaluate all duplicates if accession id corresponds to\\nduplicate entries"
    exhaustive: "Score RiPPs even if they don't have a valid split site"
    print_precursors: "Print precursors in HTML file"
    web: "Only to use when running as a web tool"
    main: ""
    rodeo: ""
    app_dot: ""
    conf_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}