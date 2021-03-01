version 1.0

task RsatDyadanalysis {
  input {
    Boolean? help
    File? sequence_analyzed_sequences
    String? mask
    String? format
    Boolean? oligolengtholigonucleotide_size_default
    Boolean? sp
    String? type
    File? accept
    Boolean? groups_p
    Boolean? two_str
    Boolean? one_str
    Boolean? prot
    Boolean? exp_freq
    Boolean? ncf
    Boolean? bg
    Boolean? org
    Boolean? tax_on
    Boolean? tho_sig
    Int? lth
    Int? uth
    Boolean? sort
    String? return
    Boolean? under
    Boolean? two_tails
    Boolean? zero_occ
    Boolean? quick
    Boolean? noov
    Boolean? timeout
    Boolean? seqtype
    String statistics
    String pattern_discovery
    String oligonucleotide_dot
    Int pxx_sum_pj
    String accuracy_dot
    Int pxx_sum_pxi
    String e_value
  }
  command <<<
    rsat dyad_analysis \
      ~{statistics} \
      ~{pattern_discovery} \
      ~{oligonucleotide_dot} \
      ~{pxx_sum_pj} \
      ~{accuracy_dot} \
      ~{pxx_sum_pxi} \
      ~{e_value} \
      ~{if (help) then "-help" else ""} \
      ~{if defined(sequence_analyzed_sequences) then ("-o " +  '"' + sequence_analyzed_sequences + '"') else ""} \
      ~{if defined(mask) then ("-mask " +  '"' + mask + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if (oligolengtholigonucleotide_size_default) then "-l" else ""} \
      ~{if (sp) then "-sp" else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if defined(accept) then ("-accept " +  '"' + accept + '"') else ""} \
      ~{if (groups_p) then "-groupsp" else ""} \
      ~{if (two_str) then "-2str" else ""} \
      ~{if (one_str) then "-1str" else ""} \
      ~{if (prot) then "-prot" else ""} \
      ~{if (exp_freq) then "-expfreq" else ""} \
      ~{if (ncf) then "-ncf" else ""} \
      ~{if (bg) then "-bg" else ""} \
      ~{if (org) then "-org" else ""} \
      ~{if (tax_on) then "-taxon" else ""} \
      ~{if (tho_sig) then "-thosig" else ""} \
      ~{if defined(lth) then ("-lth " +  '"' + lth + '"') else ""} \
      ~{if defined(uth) then ("-uth " +  '"' + uth + '"') else ""} \
      ~{if (sort) then "-sort" else ""} \
      ~{if defined(return) then ("-return " +  '"' + return + '"') else ""} \
      ~{if (under) then "-under" else ""} \
      ~{if (two_tails) then "-two_tails" else ""} \
      ~{if (zero_occ) then "-zeroocc" else ""} \
      ~{if (quick) then "-quick" else ""} \
      ~{if (noov) then "-noov" else ""} \
      ~{if (timeout) then "-timeout" else ""} \
      ~{if (seqtype) then "-seqtype" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help: "(must be first argument) display options"
    sequence_analyzed_sequences: "The sequence to be analyzed. Multiple sequences can\\nbe entered at once with most sequence formats (see below)."
    mask: "|lower\\nMask lower or uppercases, respecively, i.e. replace\\nselected case by N characters."
    format: "Input sequence format. Various standards are\\nsupported.\\nraw: the raw sequence without any identifier or comment.\\nmulti: several raw sequences concatenated.\\nIG: IntelliGenetics format.\\nFastA: the sequence format used by FastA, BLAST, Gibbs\\nsampler and a lot of other bioinformatic programs.\\nWconsensus: the format defined by Jerry Hertz for\\nhis programs (patser, consensus, wconsensus)."
    oligolengtholigonucleotide_size_default: "#    oligo_length\\nOligonucleotide size (default 3)\\nThis is the size of a single element (a half dyad)."
    sp: "#-# spacing (default 0-20)\\nSpacing between the elements of the dyad.\\nThe spacing is the number of bases between the end of\\nthe first element and the start of the second one.\\nSpacing formats\\n---------------\\nA single integer value means that the spacing is fixed.\\nVariable spacing can be introdued by entering the min and\\nmax values separated by a hyphen.\\nFor example 8-12 means that all occurrences of the dyad\\nwith a spacing between 8 and 12 qill be counted together\\nand their significance estimated globally.\\nWarning, this is different from scanning one by one the\\nspacing values 8 to 12."
    type: "(dr|ir|any)\\nIn order to fasten execution, the program can be asked\\nto restrict its analysis to symmetric dyads.\\nThree types are accepted\\ndr   direct repeats: the second element is the same as the\\nfirst one\\nir   inverted repeats: the second element is the reverse\\ncomplement of the first one.\\nrep  repeats: direct and inverted repeats are evaluated\\nany  (default)\\nWhen selecting the option any, the analysis is\\nperformed on all non-symmetric dyads as well."
    accept: "Specify a file containing a list of accepted\\ndyads. The analysis is then restricted to these\\ndyads. Since the number of tested dyads is reduced by\\nthis selection, the multitesting correction is\\ngenerally lower, which increases the significance of\\nthe accepted dyads, compared to the default situation\\nwhere all dyads are analyzed.\\nFile format: the first word of each row specifies a\\ndyad. Subsequent words are ignored."
    groups_p: "Group dyads made of the same words (monads) but with\\ndifferent spacings."
    two_str: "count on oth strands\\nThe occurrences of each oligonucleotide are summed on both\\nstrands. This allows to detect elements which act in an\\norientation-insensitive way (as is generally the case for\\nyeast upstream elements)."
    one_str: "single strand count\\nonly the direct strand is considered for oligonucleotide and\\ndyad occurrence counting."
    prot: "input sequence is proteic. In this case, the analysis\\nconcerns pairs of oligopeptides instead of oligonucleotides"
    exp_freq: "file with an expected frequency table\\nBy default, the frequency expected for each dyad is the\\nproduct of the frequency expected for each element\\n(oligonucleotide):\\nexp(dyad) = exp(oligo1)*exp(oligo2)\\nBy default, the oligonucleotide frequencies observed in the\\ninput sequences are used to estimate the expected oligo\\nfrequencies.\\nAlternatively, predefined frequency tables can be used.\\nThese tables can for instance be calculated on basis of\\n- the whole yeast genome\\n- all yeast intergenic regions\\n- all yeast gene regions\\nThis allows to correct the bias due to the highly variable\\ndistribution of oligonucleotides observed in the yeast genome."
    ncf: "(deprecated, use \\\"-bg intergenic\\\" instead)\\nuse intergenic frequencies as background frequencies"
    bg: "background model\\nType of sequences used as background model for\\nestimating expected dyad frequencies.\\nEither -org or -taxon is required with the option -bg.\\nSupported models:\\n-bg upstream\\nall upstream sequences, allowing overlap with\\nupstream ORFs\\n-bg upstream-noorf\\nall upstream sequences, preventing overlap\\nwith upstream ORFs\\n-bg intergenic\\nintergenic frequencies\\nWhole set of intergenic regions, including\\nupstream and downstream sequences\\n-bg monads (default)\\nCalcualte expected dyad frequency from the monad\\nfrequencies observed in the input sequences.\\n-bg input\\nSame as -bg monads, allowed for consistency with\\noligo-analysis."
    org: "organism"
    tax_on: "taxon\\nOrganism or taxon that used as reference for the\\nestimation of a background model based on a genome\\nsubset (option -bg).  Either -org or -taxon is\\nrequired with the option -bg.\\nOptions -org and -taxon are mutually exclusive."
    tho_sig: "#\\nThreshold on occurrence significance.\\n(obsolete: use -lth occ_sig instead)"
    lth: "value\\nLower threshold on some parameter. All patterns with a\\nparameter value smaller than the threshold are\\ndiscarded.\\nSupported parameters: occ,occ_P,occ_E,occ_sig,observed_freq,exp_freq,zscore,mseq,ms_P,ms_E,ms_sig,ratio,rank\\nExample: select patterns with a positive value for the\\noccurrence significance.\\n-lth occ_sig 0"
    uth: "value\\nUpper threshold on some parameter. All patterns with a\\nparameter value higher than the threshold are\\ndiscarded.\\nSupported parameters: occ,occ_P,occ_E,occ_sig,observed_freq,exp_freq,zscore,mseq,ms_P,ms_E,ms_sig,ratio,rank\\nExample: to select no more than 50 patterns\\n-uth rank 50"
    sort: "sort results by decreasing order of significance"
    return: "output fields may contain one or several of the following\\nwords:\\nfreq\\nocc\\nproba (binomial probability)\\nzscore\\nratio\\nrank\\nthe fields have to be separated by commas\\nBy default, only occurrences are returned."
    under: "detect under-represented instead of over-represented\\ndyads (left-tail significance test)."
    two_tails: "detect under-represented and over-represented dyads\\n(two-tail significance test)."
    zero_occ: "Report also dyads with zero occurrences (provided they\\nfit the other thresholds).  By default, the program\\nreports only patterns present in the sequence.  If the\\nleft tail or two-tail test is applied, patterns with\\nzero occurrences are automatically taken into\\naccount.\\nIn some other cases, one would also like to detect\\npatterns absent from the sequence. This is the\\nfunction of the option -zeroocc."
    quick: "Quick count mode: delegate the counting of word\\noccurrences to count-words, a program written in C by\\nMatthieu Defrance.\\nThis option is incompatible with the following output\\nfields:"
    noov: "do not allow overlapping matches of the same word"
    timeout: "#\\ntimeout (in seconds). Default = 3600.\\ndyad-analysis can be time consuming. In order to\\nprotect the server from endless queries, the program\\nwill automatically stop after 1 hour (default) of\\ncalculation. The time out value can be changed for\\nheavy tasks."
    seqtype: "dna|prot|other\\nInput sequence type\\n. DNA (default)\\nOnly A, C, G, and T residues are\\naccepted. oligomers that contain partly defined\\n(IUPAC code) or undefined nucleotides (N) are\\ndiscarded from the countings.\\n. protein\\nOligopeptide analysis instead of oligonucleotide.\\nThis inactivates the grouping of oligomers with\\ntheir reverse complements, and modifies the\\nalphabet size.\\n. other\\nAny type of letters found in the input sequence is\\nconsidered valid. This allows to analyze texts in\\nhuman language."
    statistics: "sequences"
    pattern_discovery: "OPTIONS"
    oligonucleotide_dot: "Sig value higher than 0"
    pxx_sum_pj: "P(X>=x) =  1 - SUM P(j)"
    accuracy_dot: "Interpretation: the P-value (Pval) represents the nominal risk"
    pxx_sum_pxi: "P(X<=x) =  SUM P(X=i)"
    e_value: "The probability of occurrence by itself is not fully\\ninformative, because the threshold must be adapted depending\\non the number of patterns considered. Indeed, a simple\\nhexanucleotide analysis amounts to consider 4096\\nhypotheses.\\nThe E-value (Eval) represents the expected number of patterns\\nwhich would be returned at random for a given threshold of\\nnominal P-value.\\nEval = NPO * P(X>=x)\\nwhere NPO is the number of possible oligomers of the chosen\\nlength (eg 4096 for hexanucleotides).\\nNote that when searches are performed on both strands, NPO is\\ncorrected for the fact that non-palindromic patterns are\\ngrouped by pairs (for example, there are 4096 possible\\nhexanucleotides when the count is performed on a single\\nstrand, but only 2080 when the count is performed on both\\nstrands).\\nInterpretation: the E-value (Eval) represents the expected\\nnumber of false positives, for a given threshold of P-value\\n(Pval)."
  }
  output {
    File out_stdout = stdout()
    File out_sequence_analyzed_sequences = "${in_sequence_analyzed_sequences}"
  }
}