version 1.0

task Quantifier.pl.orig {
  input {
    Boolean? list_values_allowed
    String? mirna_precursor_sequences
    String? mirna_sequences_mirbase
    Boolean? specify_option_mirna
    String? your_read_sequences
    Boolean? configtxt_file_different
    Boolean? optional_star_sequences
    Boolean? eg_mouse_searching
    Boolean? optional_otherwise_generating
    Boolean? parameter_given_pdfs
    Boolean? parameter_given_reads
    Boolean? also_considers_mappings
    Boolean? file_conversion_again
    Boolean? mapping_precursor_again
    Boolean? number_when_reads
    Boolean? number_nucleotides_upstream
    Boolean? number_nucleotides_downstream
    Boolean? create_outputmrd_file
    Boolean? considers_whole_precursor
    Boolean? read_counts_weighed
    Boolean? use_mappings_caveat
    String perl
    String quantifier_do_tpl
    String? timestamp
    String? pdfs
    String? sort
    String? stringent
    String? number
    String? of
    String? mismatches
    String? in
    String? reads
    String? vs
    String? precursor
    String? mappings
  }
  command <<<
    quantifier.pl.orig \
      ~{perl} \
      ~{quantifier_do_tpl} \
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
      ~{mappings} \
      ~{true="-u" false="" list_values_allowed} \
      ~{if defined(mirna_precursor_sequences) then ("-p " +  '"' + mirna_precursor_sequences + '"') else ""} \
      ~{if defined(mirna_sequences_mirbase) then ("-m " +  '"' + mirna_sequences_mirbase + '"') else ""} \
      ~{true="-P" false="" specify_option_mirna} \
      ~{if defined(your_read_sequences) then ("-r " +  '"' + your_read_sequences + '"') else ""} \
      ~{true="-c" false="" configtxt_file_different} \
      ~{true="-s" false="" optional_star_sequences} \
      ~{true="-t" false="" eg_mouse_searching} \
      ~{true="-y" false="" optional_otherwise_generating} \
      ~{true="-d" false="" parameter_given_pdfs} \
      ~{true="-o" false="" parameter_given_reads} \
      ~{true="-k" false="" also_considers_mappings} \
      ~{true="-n" false="" file_conversion_again} \
      ~{true="-x" false="" mapping_precursor_again} \
      ~{true="-g" false="" number_when_reads} \
      ~{true="-e" false="" number_nucleotides_upstream} \
      ~{true="-f" false="" number_nucleotides_downstream} \
      ~{true="-j" false="" create_outputmrd_file} \
      ~{true="-w" false="" considers_whole_precursor} \
      ~{true="-W" false="" read_counts_weighed} \
      ~{true="-U" false="" use_mappings_caveat}
  >>>
  parameter_meta {
    list_values_allowed: "list all values allowed for the species parameter that have an entry at UCSC"
    mirna_precursor_sequences: "miRNA precursor sequences from miRBase"
    mirna_sequences_mirbase: "miRNA sequences from miRBase"
    specify_option_mirna: "specify this option of your mature miRNA file contains 5p and 3p ids only"
    your_read_sequences: "your read sequences"
    configtxt_file_different: "[file]    config.txt file with different sample ids... or just the one sample id  -- deprecated"
    optional_star_sequences: "[star.fa] optional star sequences from miRBase"
    eg_mouse_searching: "[species] e.g. Mouse or mmu if not searching in a specific species all species in your files will be analyzed else only the species in your dataset is considered"
    optional_otherwise_generating: "[time]    optional otherwise its generating a new one"
    parameter_given_pdfs: "if parameter given pdfs will not be generated, otherwise pdfs will be generated"
    parameter_given_reads: "if parameter is given reads were not sorted by sample in pdf file, default is sorting"
    also_considers_mappings: "also considers precursor-mature mappings that have different ids, eg let7c would be allowed to map to pre-let7a"
    file_conversion_again: "do not do file conversion again"
    mapping_precursor_again: "do not do mapping against precursor again"
    number_when_reads: "[int]     number of allowed mismatches when mapping reads to precursors, default 1"
    number_nucleotides_upstream: "[int]     number of nucleotides upstream of the mature sequence to consider, default 2"
    number_nucleotides_downstream: "[int]     number of nucleotides downstream of the mature sequence to consider, default 5"
    create_outputmrd_file: "do not create an output.mrd file and pdfs if specified"
    considers_whole_precursor: "considers the whole precursor as the 'mature sequence'"
    read_counts_weighed: "read counts are weighed by their number of mappings. e.g. A read maps twice so each position gets 0.5 added to its read profile"
    use_mappings_caveat: "use only unique read mappings; Caveat: Some miRNAs have multiple precursors. These will be underestimated in their expression since the multimappers are excluded"
    perl: ""
    quantifier_do_tpl: ""
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
    mappings: ""
  }
}