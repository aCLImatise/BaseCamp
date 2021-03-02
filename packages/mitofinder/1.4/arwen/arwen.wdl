version 1.0

task Arwen {
  input {
    Boolean? mtm_am
    Boolean? mtx
    Boolean? gc
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
    Boolean? tv
    Boolean? circulartopology_search_wraps
    Boolean? assume_lineartopology_search
    Boolean? double_search_strands
    String? single_search_strand
    String? sc
    Boolean? rp
    Boolean? seq
    Boolean? br
    Boolean? fast_a
    Boolean? fo
    Boolean? display_base_sequence
    Boolean? jr
    Boolean? jr_four
    Boolean? verbose_prints_search
    String? print_output_is
    Boolean? print_genes_batch
    Boolean? mt
    Boolean? a
    File filename
  }
  command <<<
    arwen \
      ~{filename} \
      ~{if (mtm_am) then "-mtmam" else ""} \
      ~{if (mtx) then "-mtx" else ""} \
      ~{if (gc) then "-gc" else ""} \
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
      ~{if (tv) then "-tv" else ""} \
      ~{if (circulartopology_search_wraps) then "-c" else ""} \
      ~{if (assume_lineartopology_search) then "-l" else ""} \
      ~{if (double_search_strands) then "-d" else ""} \
      ~{if defined(single_search_strand) then ("-s " +  '"' + single_search_strand + '"') else ""} \
      ~{if defined(sc) then ("-sc " +  '"' + sc + '"') else ""} \
      ~{if (rp) then "-rp" else ""} \
      ~{if (seq) then "-seq" else ""} \
      ~{if (br) then "-br" else ""} \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (fo) then "-fo" else ""} \
      ~{if (display_base_sequence) then "-j" else ""} \
      ~{if (jr) then "-jr" else ""} \
      ~{if (jr_four) then "-jr4" else ""} \
      ~{if (verbose_prints_search) then "-v" else ""} \
      ~{if defined(print_output_is) then ("-o " +  '"' + print_output_is + '"') else ""} \
      ~{if (print_genes_batch) then "-w" else ""} \
      ~{if (mt) then "-mt" else ""} \
      ~{if (a) then "-a" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mitofinder:1.4--py27h516909a_0"
  }
  parameter_meta {
    mtm_am: "Search for Mammalian mitochondrial tRNA\\ngenes. -tv switch set.\\nMammalian mitochondrial genetic code used."
    mtx: "Low scoring tRNA genes are\\nnot reported."
    gc: "<num>      Use the GenBank transl_table = <num> genetic code."
    gc_std: "Use standard genetic code."
    gc_met: "Use composite Metazoan mitochondrial genetic code."
    gc_vert: "Use Vertebrate mitochondrial genetic code."
    gc_invert: "Use Invertebrate mitochondrial genetic code."
    gc_yeast: "Use Yeast mitochondrial genetic code."
    gc_prot: "Use Mold/Protozoan/Coelenterate mitochondrial genetic code."
    gc_ciliate: "Use Ciliate genetic code."
    gc_flatworm: "Use Echinoderm/Flatworm mitochondrial genetic code."
    gce_up_lot: "Use Euplotid genetic code."
    gcb_act: "Use Bacterial/Plant Chloroplast genetic code."
    gc_alt_yeast: "Use alternative Yeast genetic code."
    gca_scid: "Use Ascidian Mitochondrial genetic code."
    gc_alt_flat: "Use alternative Flatworm Mitochondrial genetic code."
    gcb_lep: "Use Blepharisma genetic code."
    gc_chloro_ph: "Use Chlorophycean Mitochondrial genetic code."
    gc_trem: "Use Trematode Mitochondrial genetic code."
    gcs_cen: "Use Scenedesmus obliquus Mitochondrial genetic code."
    gc_thr_aust: "Use Thraustochytrium Mitochondrial genetic code.\\nIndividual modifications can be appended using"
    tv: "Do not search for mitochondrial TV replacement\\nloop tRNA genes."
    circulartopology_search_wraps: "Assume that each sequence has a circular\\ntopology. Search wraps around each end.\\nDefault setting."
    assume_lineartopology_search: "Assume that each sequence has a linear\\ntopology. Search does not wrap."
    double_search_strands: "Double. Search both strands of each\\nsequence. Default setting."
    single_search_strand: "+     Single. Do not search the complementary\\n(antisense) strand of each sequence."
    sc: "Single complementary. Do not search the sense\\nstrand of each sequence."
    rp: "Report low scoring genes as possible pseudogenes"
    seq: "Print out primary sequence."
    br: "Show secondary structure of tRNA gene primary\\nsequence with round brackets."
    fast_a: "Print out primary sequence in fasta format."
    fo: "Print out primary sequence in fasta format only\\n(no secondary structure)."
    display_base_sequence: "Display 4-base sequence on 3' end of astem\\nregardless of predicted amino-acyl acceptor\\nlength."
    jr: "Allow some divergence of 3' amino-acyl acceptor\\nsequence from NCCA."
    jr_four: "Allow some divergence of 3' amino-acyl acceptor\\nsequence from NCCA, and display 4 bases."
    verbose_prints_search: "Verbose. Prints out search progress\\nto STDERR."
    print_output_is: "print output into <outfile>. If <outfile>\\nexists, it is overwritten.\\nBy default, output goes to STDOUT."
    print_genes_batch: "Print out genes in batch mode.\\nOutput is in the form:\\nSequence name\\nN genes found\\n1 tRNA-<species> [locus 1] <Apos> (nnn)\\n.\\n.\\nN tRNA-<species> [Locus N] <Apos> (nnn)\\nN is the number of genes found\\n<species> is the tRNA iso-acceptor species\\n<Apos> is the tRNA anticodon relative position\\n(nnn) is the tRNA anticodon base triplet\\n"
    mt: ""
    a: ""
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}