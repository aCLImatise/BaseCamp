version 1.0

task Quantifierpl {
  input {
    Boolean? list_values_allowed
    String? mirna_precursor_sequences
    String? mirna_sequences_mirbase
    Boolean? specify_option_contains
    String? your_read_sequences
    Boolean? configtxt_file_sample
    Boolean? optional_star_sequences
    Boolean? eg_mouse_searching
    Boolean? optional_otherwise_generating
    Boolean? parameter_given_pdfs
    Boolean? parameter_given_reads
    Boolean? also_considers_mappings
    Boolean? do_file_conversion
    Boolean? do_mapping_again
    Boolean? number_when_reads
    Boolean? number_consider_default
    Boolean? number_downstream_consider
    File? create_outputmrd_file
    Boolean? considers_whole_precursor
    Boolean? read_counts_weighed
    Boolean? use_unique_mappings
    Boolean? more_options
    Boolean? options
    String? timestamp
    String? pdfs
    String? sort
    String? stringent
    Int? number
    String? of
    String? mismatches
    String? in
    String? reads
    String? vs
    String? precursor
  }
  command <<<
    quantifier_pl \
      ~{timestamp} \
      ~{pdfs} \
      ~{sort} \
      ~{stringent} \
      ~{number} \
      ~{of} \
      ~{mismatches} \
      ~{in} \
      ~{reads} \
      ~{vs} \
      ~{precursor} \
      ~{if (list_values_allowed) then "-u" else ""} \
      ~{if defined(mirna_precursor_sequences) then ("-p " +  '"' + mirna_precursor_sequences + '"') else ""} \
      ~{if defined(mirna_sequences_mirbase) then ("-m " +  '"' + mirna_sequences_mirbase + '"') else ""} \
      ~{if (specify_option_contains) then "-P" else ""} \
      ~{if defined(your_read_sequences) then ("-r " +  '"' + your_read_sequences + '"') else ""} \
      ~{if (configtxt_file_sample) then "-c" else ""} \
      ~{if (optional_star_sequences) then "-s" else ""} \
      ~{if (eg_mouse_searching) then "-t" else ""} \
      ~{if (optional_otherwise_generating) then "-y" else ""} \
      ~{if (parameter_given_pdfs) then "-d" else ""} \
      ~{if (parameter_given_reads) then "-o" else ""} \
      ~{if (also_considers_mappings) then "-k" else ""} \
      ~{if (do_file_conversion) then "-n" else ""} \
      ~{if (do_mapping_again) then "-x" else ""} \
      ~{if (number_when_reads) then "-g" else ""} \
      ~{if (number_consider_default) then "-e" else ""} \
      ~{if (number_downstream_consider) then "-f" else ""} \
      ~{if (create_outputmrd_file) then "-j" else ""} \
      ~{if (considers_whole_precursor) then "-w" else ""} \
      ~{if (read_counts_weighed) then "-W" else ""} \
      ~{if (use_unique_mappings) then "-U" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_values_allowed: "list all values allowed for the species parameter that have an entry at UCSC"
    mirna_precursor_sequences: "miRNA precursor sequences from miRBase"
    mirna_sequences_mirbase: "miRNA sequences from miRBase"
    specify_option_contains: "specify this option of your mature miRNA file contains 5p and 3p ids only"
    your_read_sequences: "your read sequences"
    configtxt_file_sample: "[file]    config.txt file with different sample ids... or just the one sample id  -- deprecated"
    optional_star_sequences: "[star.fa] optional star sequences from miRBase"
    eg_mouse_searching: "[species] e.g. Mouse or mmu\\nif not searching in a specific species all species in your files will be analyzed\\nelse only the species in your dataset is considered"
    optional_otherwise_generating: "[time]    optional otherwise its generating a new one"
    parameter_given_pdfs: "if parameter given pdfs will not be generated, otherwise pdfs will be generated"
    parameter_given_reads: "if parameter is given reads were not sorted by sample in pdf file, default is sorting"
    also_considers_mappings: "also considers precursor-mature mappings that have different ids, eg let7c\\nwould be allowed to map to pre-let7a"
    do_file_conversion: "do not do file conversion again"
    do_mapping_again: "do not do mapping against precursor again"
    number_when_reads: "[int]     number of allowed mismatches when mapping reads to precursors, default 1"
    number_consider_default: "[int]     number of nucleotides upstream of the mature sequence to consider, default 2"
    number_downstream_consider: "[int]     number of nucleotides downstream of the mature sequence to consider, default 5"
    create_outputmrd_file: "do not create an output.mrd file and pdfs if specified"
    considers_whole_precursor: "considers the whole precursor as the 'mature sequence'"
    read_counts_weighed: "read counts are weighed by their number of mappings. e.g. A read maps twice so each position gets 0.5 added to its read profile"
    use_unique_mappings: "use only unique read mappings; Caveat: Some miRNAs have multiple precursors. These will be underestimated in their expression since the multimappers are excluded"
    more_options: ""
    options: ""
    timestamp: ""
    pdfs: ""
    sort: ""
    stringent: ""
    number: ""
    of: ""
    mismatches: ""
    in: ""
    reads: ""
    vs: ""
    precursor: ""
  }
  output {
    File out_stdout = stdout()
    File out_create_outputmrd_file = "${in_create_outputmrd_file}"
  }
}