class: CommandLineTool
id: arwen.cwl
inputs:
- id: in_mtm_am
  doc: "Search for Mammalian mitochondrial tRNA\ngenes. -tv switch set.\nMammalian\
    \ mitochondrial genetic code used."
  type: boolean?
  inputBinding:
    prefix: -mtmam
- id: in_mtx
  doc: "Low scoring tRNA genes are\nnot reported."
  type: boolean?
  inputBinding:
    prefix: -mtx
- id: in_gc
  doc: <num>      Use the GenBank transl_table = <num> genetic code.
  type: boolean?
  inputBinding:
    prefix: -gc
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
  doc: Use Echinoderm/Flatworm mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcflatworm
- id: in_gce_up_lot
  doc: Use Euplotid genetic code.
  type: boolean?
  inputBinding:
    prefix: -gceuplot
- id: in_gcb_act
  doc: Use Bacterial/Plant Chloroplast genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcbact
- id: in_gc_alt_yeast
  doc: Use alternative Yeast genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcaltyeast
- id: in_gca_scid
  doc: Use Ascidian Mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcascid
- id: in_gc_alt_flat
  doc: Use alternative Flatworm Mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcaltflat
- id: in_gcb_lep
  doc: Use Blepharisma genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcblep
- id: in_gc_chloro_ph
  doc: Use Chlorophycean Mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcchloroph
- id: in_gc_trem
  doc: Use Trematode Mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gctrem
- id: in_gcs_cen
  doc: Use Scenedesmus obliquus Mitochondrial genetic code.
  type: boolean?
  inputBinding:
    prefix: -gcscen
- id: in_gc_thr_aust
  doc: "Use Thraustochytrium Mitochondrial genetic code.\nIndividual modifications\
    \ can be appended using"
  type: boolean?
  inputBinding:
    prefix: -gcthraust
- id: in_tv
  doc: "Do not search for mitochondrial TV replacement\nloop tRNA genes."
  type: boolean?
  inputBinding:
    prefix: -tv
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
  doc: "+     Single. Do not search the complementary\n(antisense) strand of each\
    \ sequence."
  type: string?
  inputBinding:
    prefix: -s
- id: in_sc
  doc: "Single complementary. Do not search the sense\nstrand of each sequence."
  type: string?
  inputBinding:
    prefix: -sc
- id: in_rp
  doc: Report low scoring genes as possible pseudogenes
  type: boolean?
  inputBinding:
    prefix: -rp
- id: in_seq
  doc: Print out primary sequence.
  type: boolean?
  inputBinding:
    prefix: -seq
- id: in_br
  doc: "Show secondary structure of tRNA gene primary\nsequence with round brackets."
  type: boolean?
  inputBinding:
    prefix: -br
- id: in_fast_a
  doc: Print out primary sequence in fasta format.
  type: boolean?
  inputBinding:
    prefix: -fasta
- id: in_fo
  doc: "Print out primary sequence in fasta format only\n(no secondary structure)."
  type: boolean?
  inputBinding:
    prefix: -fo
- id: in_display_base_sequence
  doc: "Display 4-base sequence on 3' end of astem\nregardless of predicted amino-acyl\
    \ acceptor\nlength."
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
- id: in_verbose_prints_search
  doc: "Verbose. Prints out search progress\nto STDERR."
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_print_output_is
  doc: "print output into <outfile>. If <outfile>\nexists, it is overwritten.\nBy\
    \ default, output goes to STDOUT."
  type: string?
  inputBinding:
    prefix: -o
- id: in_print_genes_batch
  doc: "Print out genes in batch mode.\nOutput is in the form:\nSequence name\nN genes\
    \ found\n1 tRNA-<species> [locus 1] <Apos> (nnn)\n.\n.\nN tRNA-<species> [Locus\
    \ N] <Apos> (nnn)\nN is the number of genes found\n<species> is the tRNA iso-acceptor\
    \ species\n<Apos> is the tRNA anticodon relative position\n(nnn) is the tRNA anticodon\
    \ base triplet\n"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_mt
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -mt
- id: in_a
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_filename
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mitofinder:1.4--py27h516909a_0
cwlVersion: v1.1
baseCommand:
- arwen
