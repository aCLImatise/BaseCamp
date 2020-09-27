version 1.0

task RsatPeakmotifs {
  input {
    Int? disco
    Boolean? two_tails
    String peak_motifs
    String testing_dot
    String supported_dot
    String track_dot
    String file_should_sufficiently
    String server_dot
    String when_option_mnomergelengthsm
    Int one_five_seven_eight_eight_eight_dot
    String pss_mdot
  }
  command <<<
    rsat peak_motifs \
      ~{peak_motifs} \
      ~{testing_dot} \
      ~{supported_dot} \
      ~{track_dot} \
      ~{file_should_sufficiently} \
      ~{server_dot} \
      ~{when_option_mnomergelengthsm} \
      ~{one_five_seven_eight_eight_eight_dot} \
      ~{pss_mdot} \
      ~{if defined(disco) then ("-disco " +  '"' + disco + '"') else ""} \
      ~{if (two_tails) then "-two_tails" else ""}
  >>>
  parameter_meta {
    disco: "or by entering a comma-separated list of algorithms:\\n-disco oligos,dyads\\n[1mDefault motif discovery algorithms[0m\\n[33moligos[0m\\nRun [33moligo-analysis[0m to detect over-represented oligonucleotides\\nof a given length (k, specified with option -l) in the test set\\n(van Helden et al., 1998). Prior frequencies of oligonucleotides\\nare taken from Markov model of order m (see option -markov)\\nestimated from the test set sequences themselves.\\n[33mdyads[0m\\nRun [33mdyad-analysis[0m to detect over-represented dyads, i.e. pairs\\nof short oligonucleotides (monads) spaced by a region of fixed\\nwidth but variable content (van Helden et al., 2000). Spaced\\nmotifs are typical of certain classes of transcription factors\\nforming homo- or heterodimers.\\nBy default, peak-motifs analyzes pairs of trinucleotides with\\nany spacing between 0 and 20.\\nThe expected frequency of each dyad is estimated as the product\\nof its monad frequencies in the sequences (option -bg monads of\\ndyad-analysis).\\n[33mpositions[0m\\nRun [33mposition-analysis[0m to detect oligonucleotides showing a\\npositional bias, i.e. have a non-homogeneous distribution in the\\npeak sequence set.\\nThis method was initially developed to analyze termination and\\npoly-adenylation signals in downstream sequences (van Helden et\\nal., 2001), and it turns out to be very efficient for detecting\\nmotifs centred on the ChIP-seq peaks. For ChIP-seq analysis, the\\nreference position is the center of each sequence.\\nThe reference position can however be changed with the option\\n[33m-origin[0m (center, start, end).\\nNote that [33mpeak-motifs[0m also uses [33mposition-analysis[0m for the task\\n[1mcomposition[0m, in order to detect compositional biases (residues,\\ndinucleotides) in the test sequence set.\\n[33mlocal_words[0m\\nRun [33mlocal-word-analysis[0m to detect locally over-represented\\noligonucleotides and dyads.\\nThe program [33mlocal-word-analysis[0m (Matthieu Defrance,unpublished)\\ntests the over-representation of each possible word (oligo,\\ndyad) in positional windows in the sequence set.\\nTwo types of background models are supported: (i) Markov model\\nof order m estimated locally (within the window under\\nconsideration; (ii) the frequency observed for a word in the\\nwhole sequence set is used as estimator of the prior probability\\nof this word in the window.\\nAfter our first trials, this program gives excellent results in\\nChIP-seq datasets, because its senstivitity increases with large\\nnumber of sequences (several hundreds/thousands), and its\\nbackground model is more stringent than for programs computing\\nthe global over-representation (oligo-analysis, dyad-analysis).\\n[33mmerged_words[0m\\nExtract a position-specific scoring matrix (using\\n[33mmatrix-from-patterns[0m) from all the words discovered by the\\nselected string-based motif disovery algorithms\\n(oigos,dyads,positions and/or local_words)."
    two_tails: ", which detects both under- and over-represented patterns."
    peak_motifs: "[1mVERSION[0m"
    testing_dot: "Matthieu Defrance <defrance@ccg.unam.mx>"
    supported_dot: "[1mOUTPUT FORMAT[0m"
    track_dot: "The 4th column of the BED file must correspond to the fasta headers."
    file_should_sufficiently: "The file should be sufficiently large (several Mb) to provide a"
    server_dot: "[1m-disco"
    when_option_mnomergelengthsm: "When the option [33m-no_merge_lengths[0m is active, matrices are built"
    one_five_seven_eight_eight_eight_dot: "[33mmatrix-quality[0m"
    pss_mdot: "If included by default, they can take a lot of disk space for large"
  }
  output {
    File out_stdout = stdout()
  }
}