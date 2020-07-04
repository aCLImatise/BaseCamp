version 1.0

task Dreme {
  input {
    Boolean? directory_create_directory
    Directory? oc
    File? positive_sequence_file
    File? negative_sequence_file
    Boolean? dna
    Boolean? rna
    Boolean? protein
    File? alph
    Boolean? norc
    String? stop_motif_evalue
    String? stop_motifs_output
    String? stop_time_elapsed
    String? number_generalize_default
    String? seed_shuffling_sequences
    String? verbosity
    Boolean? png
    Boolean? eps
    String? desc
    File? d_file
    Int? mink
    Int? max_k
    String? sets_minkmaxkk
    Boolean? print_list_enrichment
  }
  command <<<
    dreme \
      ~{true="-o" false="" directory_create_directory} \
      ~{if defined(oc) then ("-oc " +  '"' + oc + '"') else ""} \
      ~{if defined(positive_sequence_file) then ("-p " +  '"' + positive_sequence_file + '"') else ""} \
      ~{if defined(negative_sequence_file) then ("-n " +  '"' + negative_sequence_file + '"') else ""} \
      ~{true="-dna" false="" dna} \
      ~{true="-rna" false="" rna} \
      ~{true="-protein" false="" protein} \
      ~{if defined(alph) then ("-alph " +  '"' + alph + '"') else ""} \
      ~{true="-norc" false="" norc} \
      ~{if defined(stop_motif_evalue) then ("-e " +  '"' + stop_motif_evalue + '"') else ""} \
      ~{if defined(stop_motifs_output) then ("-m " +  '"' + stop_motifs_output + '"') else ""} \
      ~{if defined(stop_time_elapsed) then ("-t " +  '"' + stop_time_elapsed + '"') else ""} \
      ~{if defined(number_generalize_default) then ("-g " +  '"' + number_generalize_default + '"') else ""} \
      ~{if defined(seed_shuffling_sequences) then ("-s " +  '"' + seed_shuffling_sequences + '"') else ""} \
      ~{if defined(verbosity) then ("-verbosity " +  '"' + verbosity + '"') else ""} \
      ~{true="-png" false="" png} \
      ~{true="-eps" false="" eps} \
      ~{if defined(desc) then ("-desc " +  '"' + desc + '"') else ""} \
      ~{if defined(d_file) then ("-dfile " +  '"' + d_file + '"') else ""} \
      ~{if defined(mink) then ("-mink " +  '"' + mink + '"') else ""} \
      ~{if defined(max_k) then ("-maxk " +  '"' + max_k + '"') else ""} \
      ~{if defined(sets_minkmaxkk) then ("-k " +  '"' + sets_minkmaxkk + '"') else ""} \
      ~{true="-l" false="" print_list_enrichment}
  >>>
  parameter_meta {
    directory_create_directory: "<directory>         create the specified output directory  and write all output to files in that directory"
    oc: "create the specified output directory  overwritting it if it already exists; default: create dreme_out in the currrent working directory"
    positive_sequence_file: "positive sequence file name (required)"
    negative_sequence_file: "negative sequence file name (optional); default: the positive sequences are shuffled to create the negative set if -n is not used"
    dna: "use the standard DNA alphabet; this is the default"
    rna: "use the standard RNA alphabet"
    protein: "use the standard Protein alphabet (may not work well)"
    alph: "use custom alphabet (some restrictions apply - see manual)"
    norc: "search given strand only for motifs (not reverse complement)"
    stop_motif_evalue: "stop if motif E-value > <ethresh>; default: 0.05"
    stop_motifs_output: "stop if <m> motifs have been output; default: only stop at E-value threshold"
    stop_time_elapsed: "stop if the specified time has elapsed; default: only stop at E-value threshold"
    number_generalize_default: "number of REs to generalize; default: 100 Hint: Increasing <ngen> will make the motif search more thoroughly at some cost in speed."
    seed_shuffling_sequences: "seed for shuffling sequences; ignored if -n <filename> given; default: 1"
    verbosity: "1..5 for varying degrees of extra output default: 2"
    png: "create PNG logos"
    eps: "create EPS logos"
    desc: "store the description in the output; default: no description"
    d_file: "acts like -desc but reads the description from the specified file; allows characters that would  otherwise have to be escaped;  default: no description"
    mink: "minimum width of core motif; default 3"
    max_k: "maximum width of core motif; default 8"
    sets_minkmaxkk: "sets mink=maxk=<k>"
    print_list_enrichment: "print list of enrichment of all REs tested"
  }
}