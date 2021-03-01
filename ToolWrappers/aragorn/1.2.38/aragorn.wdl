version 1.0

task Aragorn {
  input {
    File? fast_a
    Boolean? search_tmrna_genes
    Boolean? search_trna_genesby
    Boolean? mt
    Boolean? mtm_am
    Boolean? mtx
    Boolean? mtd
    Boolean? gc_std
    Boolean? gc_met
    Boolean? gc_vert
    Boolean? gc_invert
    Boolean? gc_yeast
    Boolean? gc_prot
    Boolean? gc_ciliate
    Boolean? gc_flatworm
    Boolean? gce_up_lot
    Boolean? gcb_act
    Boolean? gc_alt_yeast
    Boolean? gca_scid
    Boolean? gc_alt_flat
    Boolean? gcb_lep
    Boolean? gc_chloro_ph
    Boolean? gc_trem
    Boolean? gcs_cen
    Boolean? gc_thr_aust
    Boolean? gcp_tero
    Boolean? gcg_rac
    Boolean? circulartopology_search_wraps
    Boolean? assume_lineartopology_search
    Boolean? double_search_strands
    Boolean? single_search_strand
    String? sc
    Boolean? io
    Boolean? same_i_intron
    Boolean? if_o
    Boolean? ir
    Boolean? c_seven
    Boolean? ss
    Boolean? display_base_sequence
    Boolean? jr
    Boolean? jr_four
    Boolean? print_score_reported
    Boolean? f_on
    Boolean? fos
    Boolean? fons
    Boolean? verbose_prints_information
    Boolean? print_trna_domain
    Boolean? a_seven
    Boolean? aa
    Boolean? amt
    Boolean? a_mm
    Boolean? print_configuration_line
    Boolean? rn
    Boolean? print_batch_mode
    Boolean? wa
    Boolean? w_unix
    Boolean? if_ro
    Int min
  }
  command <<<
    aragorn \
      ~{min} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (search_tmrna_genes) then "-m" else ""} \
      ~{if (search_trna_genesby) then "-t" else ""} \
      ~{if (mt) then "-mt" else ""} \
      ~{if (mtm_am) then "-mtmam" else ""} \
      ~{if (mtx) then "-mtx" else ""} \
      ~{if (mtd) then "-mtd" else ""} \
      ~{if (gc_std) then "-gcstd" else ""} \
      ~{if (gc_met) then "-gcmet" else ""} \
      ~{if (gc_vert) then "-gcvert" else ""} \
      ~{if (gc_invert) then "-gcinvert" else ""} \
      ~{if (gc_yeast) then "-gcyeast" else ""} \
      ~{if (gc_prot) then "-gcprot" else ""} \
      ~{if (gc_ciliate) then "-gcciliate" else ""} \
      ~{if (gc_flatworm) then "-gcflatworm" else ""} \
      ~{if (gce_up_lot) then "-gceuplot" else ""} \
      ~{if (gcb_act) then "-gcbact" else ""} \
      ~{if (gc_alt_yeast) then "-gcaltyeast" else ""} \
      ~{if (gca_scid) then "-gcascid" else ""} \
      ~{if (gc_alt_flat) then "-gcaltflat" else ""} \
      ~{if (gcb_lep) then "-gcblep" else ""} \
      ~{if (gc_chloro_ph) then "-gcchloroph" else ""} \
      ~{if (gc_trem) then "-gctrem" else ""} \
      ~{if (gcs_cen) then "-gcscen" else ""} \
      ~{if (gc_thr_aust) then "-gcthraust" else ""} \
      ~{if (gcp_tero) then "-gcptero" else ""} \
      ~{if (gcg_rac) then "-gcgrac" else ""} \
      ~{if (circulartopology_search_wraps) then "-c" else ""} \
      ~{if (assume_lineartopology_search) then "-l" else ""} \
      ~{if (double_search_strands) then "-d" else ""} \
      ~{if (single_search_strand) then "-s" else ""} \
      ~{if defined(sc) then ("-sc " +  '"' + sc + '"') else ""} \
      ~{if (io) then "-io" else ""} \
      ~{if (same_i_intron) then "-if" else ""} \
      ~{if (if_o) then "-ifo" else ""} \
      ~{if (ir) then "-ir" else ""} \
      ~{if (c_seven) then "-c7" else ""} \
      ~{if (ss) then "-ss" else ""} \
      ~{if (display_base_sequence) then "-j" else ""} \
      ~{if (jr) then "-jr" else ""} \
      ~{if (jr_four) then "-jr4" else ""} \
      ~{if (print_score_reported) then "-e" else ""} \
      ~{if (f_on) then "-fon" else ""} \
      ~{if (fos) then "-fos" else ""} \
      ~{if (fons) then "-fons" else ""} \
      ~{if (verbose_prints_information) then "-v" else ""} \
      ~{if (print_trna_domain) then "-a" else ""} \
      ~{if (a_seven) then "-a7" else ""} \
      ~{if (aa) then "-aa" else ""} \
      ~{if (amt) then "-amt" else ""} \
      ~{if (a_mm) then "-amm" else ""} \
      ~{if (print_configuration_line) then "-q" else ""} \
      ~{if (rn) then "-rn" else ""} \
      ~{if (print_batch_mode) then "-w" else ""} \
      ~{if (wa) then "-wa" else ""} \
      ~{if (w_unix) then "-wunix" else ""} \
      ~{if (if_ro) then "-ifro" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: "<filename>"
    search_tmrna_genes: "Search for tmRNA genes."
    search_trna_genesby: "Search for tRNA genes.\\nBy default, all are detected. If one of\\n-m or -t is specified, then the other\\nis not detected unless specified as well."
    mt: "Search for Metazoan mitochondrial tRNA genes.\\ntRNA genes with introns not detected. -i,-sr switchs\\nignored. Composite Metazoan mitochondrial\\ngenetic code used."
    mtm_am: "Search for Mammalian mitochondrial tRNA\\ngenes. -i switch ignored. -tv switch set.\\nMammalian mitochondrial genetic code used."
    mtx: "Same as -mt but low scoring tRNA genes are\\nnot reported."
    mtd: "Overlapping metazoan mitochondrial tRNA genes\\non opposite strands are reported."
    gc_std: "Use standard genetic code."
    gc_met: "Use composite Metazoan mitochondrial genetic code."
    gc_vert: "Use Vertebrate mitochondrial genetic code."
    gc_invert: "Use Invertebrate mitochondrial genetic code."
    gc_yeast: "Use Yeast mitochondrial genetic code."
    gc_prot: "Use Mold/Protozoan/Coelenterate mitochondrial genetic code."
    gc_ciliate: "Use Ciliate genetic code."
    gc_flatworm: "Use Echinoderm/Flatworm mitochondrial genetic code"
    gce_up_lot: "Use Euplotid genetic code."
    gcb_act: "Use Bacterial/Plant chloroplast genetic code."
    gc_alt_yeast: "Use alternative Yeast genetic code."
    gca_scid: "Use Ascidian mitochondrial genetic code."
    gc_alt_flat: "Use alternative Flatworm mitochondrial genetic code."
    gcb_lep: "Use Blepharisma genetic code."
    gc_chloro_ph: "Use Chlorophycean mitochondrial genetic code."
    gc_trem: "Use Trematode mitochondrial genetic code."
    gcs_cen: "Use Scenedesmus obliquus mitochondrial genetic code."
    gc_thr_aust: "Use Thraustochytrium mitochondrial genetic code."
    gcp_tero: "Use Pterobranchia mitochondrial genetic code."
    gcg_rac: "Use Gracilibacteria genetic code.\\nIndividual modifications can be appended using"
    circulartopology_search_wraps: "Assume that each sequence has a circular\\ntopology. Search wraps around each end.\\nDefault setting."
    assume_lineartopology_search: "Assume that each sequence has a linear\\ntopology. Search does not wrap."
    double_search_strands: "Double. Search both strands of each\\nsequence. Default setting."
    single_search_strand: "or -s+    Single. Do not search the complementary\\n(antisense) strand of each sequence."
    sc: "Single complementary. Do not search the sense\\nstrand of each sequence."
    io: "Same as -i, but allow tRNA genes with long\\nintrons to overlap shorter tRNA genes."
    same_i_intron: "Same as -i, but fix intron between positions\\n37 and 38 on C-loop (one base after anticodon)."
    if_o: "Same as -if and -io combined."
    ir: "Same as -i, but report tRNA genes with minimum\\nlength <min> bases rather than search for\\ntRNA genes with minimum length <min> bases.\\nWith this switch, <min> acts as an output filter,\\nminimum intron length for searching is still 0 bases."
    c_seven: "Search for tRNA genes with 7 base C-loops only."
    ss: "Use the stricter canonical 1-2 bp spacer1 and\\n1 bp spacer2. Ignored if -mt set. Default is to\\nallow 3 bp spacer1 and 0-2 bp spacer2, which may\\ndegrade selectivity."
    display_base_sequence: "Display 4-base sequence on 3' end of astem\\nregardless of predicted amino-acyl acceptor length."
    jr: "Allow some divergence of 3' amino-acyl acceptor\\nsequence from NCCA."
    jr_four: "Allow some divergence of 3' amino-acyl acceptor\\nsequence from NCCA, and display 4 bases."
    print_score_reported: "Print out score for each reported gene."
    f_on: "Same as -fo, with sequence and gene numbering in header."
    fos: "Same as -fo, with no spaces in header."
    fons: "Same as -fo, with sequence and gene numbering, but no spaces.\\nas (<species>|<species>) instead of ???"
    verbose_prints_information: "Verbose. Prints out information during\\nsearch to STDERR."
    print_trna_domain: "Print out tRNA domain for tmRNA genes."
    a_seven: "Restrict tRNA astem length to a maximum of 7 bases"
    aa: "Display message if predicted iso-acceptor species\\ndoes not match species in sequence name (if present)."
    amt: "<num>     Change annotated tRNA length mismatch reporting threshold to\\n<num> bases when searching GENBANK files. Default is 10 bases."
    a_mm: "<num>     Change annotated tmRNA length mismatch reporting threshold to\\n<num> bases when searching GENBANK files. Default is 30 bases."
    print_configuration_line: "Dont print configuration line (which switches\\nand files were used)."
    rn: "Repeat sequence name before summary information."
    print_batch_mode: "Print out in batch mode."
    wa: "Same as -w, but for 6 or 8 base anticodon\\nloops, print possible iso-acceptor species\\nFor tRNA genes, batch mode output is in the form:\\nSequence name\\nN genes found\\n1 tRNA-<species> [locus 1] <Apos> (nnn)\\ni(<intron position>,<intron length>)\\n.\\n.\\nN tRNA-<species> [Locus N] <Apos> (nnn)\\ni(<intron position>,<intron length>)\\nN is the number of genes found\\n<species> is the tRNA iso-acceptor species\\n<Apos> is the tRNA anticodon relative position\\n(nnn) is the tRNA anticodon base triplet\\ni means the tRNA gene has a C-loop intron\\nFor tmRNA genes, output is in the form:\\nn tmRNA(p) [Locus n] <tag offset>,<tag end offset>\\n<tag peptide>\\np means the tmRNA gene is permuted"
    w_unix: "Get around problem with some windows gcc compilers\\n(found so far in Strawberry Perl and Active Perl)\\nwhen reading Unix files.\\nExecution speed may be slower for large files.\\nExecution speed will be a lot slower for files\\nwith many small sequences.\\n"
    if_ro: ""
    min: ""
  }
  output {
    File out_stdout = stdout()
  }
}