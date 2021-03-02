class: CommandLineTool
id: aragorn.cwl
inputs:
- id: in_fast_a
  doc: <filename>
  type: File?
  inputBinding:
    prefix: -fasta
- id: in_search_tmrna_genes
  doc: Search for tmRNA genes.
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_search_trna_genesby
  doc: "Search for tRNA genes.\nBy default, all are detected. If one of\n-m or -t\
    \ is specified, then the other\nis not detected unless specified as well."
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_mt
  doc: "Search for Metazoan mitochondrial tRNA genes.\ntRNA genes with introns not\
    \ detected. -i,-sr switchs\nignored. Composite Metazoan mitochondrial\ngenetic\
    \ code used."
  type: boolean?
  inputBinding:
    prefix: -mt
- id: in_mtm_am
  doc: "Search for Mammalian mitochondrial tRNA\ngenes. -i switch ignored. -tv switch\
    \ set.\nMammalian mitochondrial genetic code used."
  type: boolean?
  inputBinding:
    prefix: -mtmam
- id: in_mtx
  doc: "Same as -mt but low scoring tRNA genes are\nnot reported."
  type: boolean?
  inputBinding:
    prefix: -mtx
- id: in_mtd
  doc: "Overlapping metazoan mitochondrial tRNA genes\non opposite strands are reported."
  type: boolean?
  inputBinding:
    prefix: -mtd
- id: in_gc_std
  doc: Use standard genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcstd
- id: in_gc_met
  doc: Use composite Metazoan mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcmet
- id: in_gc_vert
  doc: Use Vertebrate mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcvert
- id: in_gc_invert
  doc: Use Invertebrate mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcinvert
- id: in_gc_yeast
  doc: Use Yeast mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcyeast
- id: in_gc_prot
  doc: Use Mold/Protozoan/Coelenterate mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcprot
- id: in_gc_ciliate
  doc: Use Ciliate genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcciliate
- id: in_gc_flatworm
  doc: Use Echinoderm/Flatworm mitochondrial genetic code
  type: boolean?
  inputBinding:
    prefix: -gcflatworm
- id: in_gce_up_lot
  doc: Use Euplotid genetic code.
  type: boolean?
  inputBinding:
    prefix: -gceuplot
- id: in_gcb_act
  doc: Use Bacterial/Plant chloroplast genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcbact
- id: in_gc_alt_yeast
  doc: Use alternative Yeast genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcaltyeast
- id: in_gca_scid
  doc: Use Ascidian mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcascid
- id: in_gc_alt_flat
  doc: Use alternative Flatworm mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcaltflat
- id: in_gcb_lep
  doc: Use Blepharisma genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcblep
- id: in_gc_chloro_ph
  doc: Use Chlorophycean mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcchloroph
- id: in_gc_trem
  doc: Use Trematode mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gctrem
- id: in_gcs_cen
  doc: Use Scenedesmus obliquus mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcscen
- id: in_gc_thr_aust
  doc: Use Thraustochytrium mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcthraust
- id: in_gcp_tero
  doc: Use Pterobranchia mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcptero
- id: in_gcg_rac
  doc: "Use Gracilibacteria genetic code.\nIndividual modifications can be appended\
    \ using"
  type: boolean?
  inputBinding:
    prefix: -gcgrac
- id: in_circulartopology_search_wraps
  doc: "Assume that each sequence has a circular\ntopology. Search wraps around each\
    \ end.\nDefault setting."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_assume_lineartopology_search
  doc: "Assume that each sequence has a linear\ntopology. Search does not wrap."
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_double_search_strands
  doc: "Double. Search both strands of each\nsequence. Default setting."
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_single_search_strand
  doc: "or -s+    Single. Do not search the complementary\n(antisense) strand of each\
    \ sequence."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_sc
  doc: "Single complementary. Do not search the sense\nstrand of each sequence."
  type: string?
  inputBinding:
    prefix: -sc
- id: in_io
  doc: "Same as -i, but allow tRNA genes with long\nintrons to overlap shorter tRNA\
    \ genes."
  type: boolean?
  inputBinding:
    prefix: -io
- id: in_if
  doc: "Same as -i, but fix intron between positions\n37 and 38 on C-loop (one base\
    \ after anticodon)."
  type: boolean?
  inputBinding:
    prefix: -if
- id: in_if_o
  doc: Same as -if and -io combined.
  type: boolean?
  inputBinding:
    prefix: -ifo
- id: in_ir
  doc: "Same as -i, but report tRNA genes with minimum\nlength <min> bases rather\
    \ than search for\ntRNA genes with minimum length <min> bases.\nWith this switch,\
    \ <min> acts as an output filter,\nminimum intron length for searching is still\
    \ 0 bases."
  type: boolean?
  inputBinding:
    prefix: -ir
- id: in_c_seven
  doc: Search for tRNA genes with 7 base C-loops only.
  type: boolean?
  inputBinding:
    prefix: -c7
- id: in_ss
  doc: "Use the stricter canonical 1-2 bp spacer1 and\n1 bp spacer2. Ignored if -mt\
    \ set. Default is to\nallow 3 bp spacer1 and 0-2 bp spacer2, which may\ndegrade\
    \ selectivity."
  type: boolean?
  inputBinding:
    prefix: -ss
- id: in_display_base_sequence
  doc: "Display 4-base sequence on 3' end of astem\nregardless of predicted amino-acyl\
    \ acceptor length."
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_jr
  doc: "Allow some divergence of 3' amino-acyl acceptor\nsequence from NCCA."
  type: boolean?
  inputBinding:
    prefix: -jr
- id: in_jr_four
  doc: "Allow some divergence of 3' amino-acyl acceptor\nsequence from NCCA, and display\
    \ 4 bases."
  type: boolean?
  inputBinding:
    prefix: -jr4
- id: in_print_score_reported
  doc: Print out score for each reported gene.
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_f_on
  doc: Same as -fo, with sequence and gene numbering in header.
  type: boolean?
  inputBinding:
    prefix: -fon
- id: in_fos
  doc: Same as -fo, with no spaces in header.
  type: boolean?
  inputBinding:
    prefix: -fos
- id: in_fons
  doc: "Same as -fo, with sequence and gene numbering, but no spaces.\nas (<species>|<species>)\
    \ instead of ???"
  type: boolean?
  inputBinding:
    prefix: -fons
- id: in_verbose_prints_information
  doc: "Verbose. Prints out information during\nsearch to STDERR."
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_print_trna_domain
  doc: Print out tRNA domain for tmRNA genes.
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_a_seven
  doc: Restrict tRNA astem length to a maximum of 7 bases
  type: boolean?
  inputBinding:
    prefix: -a7
- id: in_aa
  doc: "Display message if predicted iso-acceptor species\ndoes not match species\
    \ in sequence name (if present)."
  type: boolean?
  inputBinding:
    prefix: -aa
- id: in_amt
  doc: "<num>     Change annotated tRNA length mismatch reporting threshold to\n<num>\
    \ bases when searching GENBANK files. Default is 10 bases."
  type: boolean?
  inputBinding:
    prefix: -amt
- id: in_a_mm
  doc: "<num>     Change annotated tmRNA length mismatch reporting threshold to\n\
    <num> bases when searching GENBANK files. Default is 30 bases."
  type: boolean?
  inputBinding:
    prefix: -amm
- id: in_print_configuration_line
  doc: "Dont print configuration line (which switches\nand files were used)."
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_rn
  doc: Repeat sequence name before summary information.
  type: boolean?
  inputBinding:
    prefix: -rn
- id: in_print_batch_mode
  doc: Print out in batch mode.
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_wa
  doc: "Same as -w, but for 6 or 8 base anticodon\nloops, print possible iso-acceptor\
    \ species\nFor tRNA genes, batch mode output is in the form:\nSequence name\n\
    N genes found\n1 tRNA-<species> [locus 1] <Apos> (nnn)\ni(<intron position>,<intron\
    \ length>)\n.\n.\nN tRNA-<species> [Locus N] <Apos> (nnn)\ni(<intron position>,<intron\
    \ length>)\nN is the number of genes found\n<species> is the tRNA iso-acceptor\
    \ species\n<Apos> is the tRNA anticodon relative position\n(nnn) is the tRNA anticodon\
    \ base triplet\ni means the tRNA gene has a C-loop intron\nFor tmRNA genes, output\
    \ is in the form:\nn tmRNA(p) [Locus n] <tag offset>,<tag end offset>\n<tag peptide>\n\
    p means the tmRNA gene is permuted"
  type: boolean?
  inputBinding:
    prefix: -wa
- id: in_w_unix
  doc: "Get around problem with some windows gcc compilers\n(found so far in Strawberry\
    \ Perl and Active Perl)\nwhen reading Unix files.\nExecution speed may be slower\
    \ for large files.\nExecution speed will be a lot slower for files\nwith many\
    \ small sequences.\n"
  type: boolean?
  inputBinding:
    prefix: -wunix
- id: in_if_ro
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -ifro
- id: in_min
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- aragorn
