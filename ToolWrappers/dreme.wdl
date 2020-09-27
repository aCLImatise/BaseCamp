version 1.0

task Dreme {
  input {
    Directory? directory_create_write
    Directory? oc
    File? positive_sequence_file
    File? negative_sequence_file
    Boolean? dna
    Boolean? rna
    Boolean? protein
    File? alph
    Boolean? norc
    Float? stop_evalue_ethreshdefault
    String? stop_motifs_outputdefault
    String? stop_specified_time
    Int? number_generalize_ngen
    File? seed_ignoredif_filename
    Float? verbosity
    Boolean? png
    Boolean? eps
    String? desc
    File? d_file
    Int? mink
    Int? max_k
    String? sets_minkmaxkk
    Boolean? print_list_enrichment
    String sequences_dot
  }
  command <<<
    dreme \
      ~{sequences_dot} \
      ~{if (directory_create_write) then "-o" else ""} \
      ~{if defined(oc) then ("-oc " +  '"' + oc + '"') else ""} \
      ~{if defined(positive_sequence_file) then ("-p " +  '"' + positive_sequence_file + '"') else ""} \
      ~{if defined(negative_sequence_file) then ("-n " +  '"' + negative_sequence_file + '"') else ""} \
      ~{if (dna) then "-dna" else ""} \
      ~{if (rna) then "-rna" else ""} \
      ~{if (protein) then "-protein" else ""} \
      ~{if defined(alph) then ("-alph " +  '"' + alph + '"') else ""} \
      ~{if (norc) then "-norc" else ""} \
      ~{if defined(stop_evalue_ethreshdefault) then ("-e " +  '"' + stop_evalue_ethreshdefault + '"') else ""} \
      ~{if defined(stop_motifs_outputdefault) then ("-m " +  '"' + stop_motifs_outputdefault + '"') else ""} \
      ~{if defined(stop_specified_time) then ("-t " +  '"' + stop_specified_time + '"') else ""} \
      ~{if defined(number_generalize_ngen) then ("-g " +  '"' + number_generalize_ngen + '"') else ""} \
      ~{if defined(seed_ignoredif_filename) then ("-s " +  '"' + seed_ignoredif_filename + '"') else ""} \
      ~{if defined(verbosity) then ("-verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (png) then "-png" else ""} \
      ~{if (eps) then "-eps" else ""} \
      ~{if defined(desc) then ("-desc " +  '"' + desc + '"') else ""} \
      ~{if defined(d_file) then ("-dfile " +  '"' + d_file + '"') else ""} \
      ~{if defined(mink) then ("-mink " +  '"' + mink + '"') else ""} \
      ~{if defined(max_k) then ("-maxk " +  '"' + max_k + '"') else ""} \
      ~{if defined(sets_minkmaxkk) then ("-k " +  '"' + sets_minkmaxkk + '"') else ""} \
      ~{if (print_list_enrichment) then "-l" else ""}
  >>>
  parameter_meta {
    directory_create_write: "<directory>         create the specified output directory\\nand write all output to files in that directory"
    oc: "create the specified output directory\\noverwritting it if it already exists;\\ndefault: create dreme_out in the currrent\\nworking directory"
    positive_sequence_file: "positive sequence file name (required)"
    negative_sequence_file: "negative sequence file name (optional);\\ndefault: the positive sequences are shuffled\\nto create the negative set if -n is not used"
    dna: "use the standard DNA alphabet; this is the default"
    rna: "use the standard RNA alphabet"
    protein: "use the standard Protein alphabet (may not work well)"
    alph: "use custom alphabet (some restrictions apply - see manual)"
    norc: "search given strand only for motifs (not reverse complement)"
    stop_evalue_ethreshdefault: "stop if motif E-value > <ethresh>;\\ndefault: 0.05"
    stop_motifs_outputdefault: "stop if <m> motifs have been output;\\ndefault: only stop at E-value threshold"
    stop_specified_time: "stop if the specified time has elapsed;\\ndefault: only stop at E-value threshold"
    number_generalize_ngen: "number of REs to generalize; default: 100\\nHint: Increasing <ngen> will make the motif\\nsearch more thoroughly at some cost in speed."
    seed_ignoredif_filename: "seed for shuffling sequences; ignored\\nif -n <filename> given; default: 1"
    verbosity: "1..5 for varying degrees of extra output\\ndefault: 2"
    png: "create PNG logos"
    eps: "create EPS logos"
    desc: "store the description in the output;\\ndefault: no description"
    d_file: "acts like -desc but reads the description from\\nthe specified file; allows characters that would\\notherwise have to be escaped;\\ndefault: no description"
    mink: "minimum width of core motif; default 3"
    max_k: "maximum width of core motif; default 8"
    sets_minkmaxkk: "sets mink=maxk=<k>"
    print_list_enrichment: "print list of enrichment of all REs tested"
    sequences_dot: "It can also find motifs in a single set of DNA sequences,"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_create_write = "${in_directory_create_write}"
    Directory out_oc = "${in_oc}"
  }
}