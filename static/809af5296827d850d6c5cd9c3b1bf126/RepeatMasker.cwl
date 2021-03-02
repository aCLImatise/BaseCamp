class: CommandLineTool
id: RepeatMasker.cwl
inputs:
- id: in_pa
  doc: "(rallel) [number]\nThe number of processors to use in parallel (only works\
    \ for batch\nfiles or sequences over 50 kb)"
  type: boolean?
  inputBinding:
    prefix: -pa
- id: in_slow_search_more
  doc: Slow search; 0-5% more sensitive, 2-3 times slower than default
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_quick_search_sensitive
  doc: Quick search; 5-10% less sensitive, 2-5 times faster than default
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_qq
  doc: "job; about 10% less sensitive, 4->10 times faster than default\n(quick searches\
    \ are fine under most circumstances) repeat options"
  type: long?
  inputBinding:
    prefix: -qq
- id: in_no_low
  doc: Does not mask low_complexity DNA or simple repeats
  type: boolean?
  inputBinding:
    prefix: -nolow
- id: in_no_int
  doc: Only masks low complex/simple repeats (no interspersed repeats)
  type: boolean?
  inputBinding:
    prefix: -noint
- id: in_no_rna
  doc: Does not mask small RNA (pseudo) genes
  type: boolean?
  inputBinding:
    prefix: -norna
- id: in_alu
  doc: Only masks Alus (and 7SLRNA, SVA and LTR5)(only for primate DNA)
  type: boolean?
  inputBinding:
    prefix: -alu
- id: in_div
  doc: "[number]\nMasks only those repeats < x percent diverged from consensus seq"
  type: boolean?
  inputBinding:
    prefix: -div
- id: in_lib
  doc: "[filename]\nAllows use of a custom library (e.g. from another species)"
  type: boolean?
  inputBinding:
    prefix: -lib
- id: in_cut_off
  doc: "[number]\nSets cutoff score for masking repeats when using -lib (default 225)"
  type: boolean?
  inputBinding:
    prefix: -cutoff
- id: in_species
  doc: "Specify the species or clade of the input sequence. The species name\nmust\
    \ be a valid NCBI Taxonomy Database species name and be contained\nin the RepeatMasker\
    \ repeat database. Some examples are:\n-species human\n-species mouse\n-species\
    \ rattus\n-species \"ciona savignyi\"\n-species arabidopsis\nOther commonly used\
    \ species:\nmammal, carnivore, rodentia, rat, cow, pig, cat, dog, chicken, fugu,\n\
    danio, \"ciona intestinalis\" drosophila, anopheles, elegans,\ndiatoaea, artiodactyl,\
    \ arabidopsis, rice, wheat, and maize"
  type: string?
  inputBinding:
    prefix: -species
- id: in_is_only
  doc: Only clips E coli insertion elements out of fasta and .qual files
  type: boolean?
  inputBinding:
    prefix: -is_only
- id: in_is_clip
  doc: 'Clips IS elements before analysis (default: IS only reported)'
  type: boolean?
  inputBinding:
    prefix: -is_clip
- id: in_no_is
  doc: Skips bacterial insertion element check
  type: boolean?
  inputBinding:
    prefix: -no_is
- id: in_gc
  doc: "[number]\nUse matrices calculated for 'number' percentage background GC level"
  type: boolean?
  inputBinding:
    prefix: -gc
- id: in_gc_calc
  doc: "RepeatMasker calculates the GC content even for batch files/small\nseqs"
  type: boolean?
  inputBinding:
    prefix: -gccalc
- id: in_frag
  doc: "[number]\nMaximum sequence length masked without fragmenting (default 60000,\n\
    300000 for DeCypher)"
  type: boolean?
  inputBinding:
    prefix: -frag
- id: in_no_cut
  doc: Skips the steps in which repeats are excised
  type: boolean?
  inputBinding:
    prefix: -nocut
- id: in_noisy
  doc: "Prints search engine progress report to screen (defaults to .stderr\nfile)"
  type: boolean?
  inputBinding:
    prefix: -noisy
- id: in_no_post
  doc: "Do not postprocess the results of the run ( i.e. call ProcessRepeats\n). NOTE:\
    \ This options should only be used when ProcessRepeats will\nbe run manually on\
    \ the results."
  type: boolean?
  inputBinding:
    prefix: -nopost
- id: in_dir
  doc: "[directory name]\nWrites output to this directory (default is query file directory,\n\
    \"-dir .\" will write to current directory)."
  type: File?
  inputBinding:
    prefix: -dir
- id: in_lignmentswrites_alignments_file
  doc: "(lignments)\nWrites alignments in .align output file"
  type: File?
  inputBinding:
    prefix: -a
- id: in_in_v
  doc: "Alignments are presented in the orientation of the repeat (with\noption -a)"
  type: boolean?
  inputBinding:
    prefix: -inv
- id: in_l_cam_big
  doc: "Outputs ambiguous DNA transposon fragments using a lower case name.\nAll other\
    \ repeats are listed in upper case. Ambiguous fragments\nmatch multiple repeat\
    \ elements and can only be called based on\nflanking repeat information."
  type: boolean?
  inputBinding:
    prefix: -lcambig
- id: in_small
  doc: Returns complete .masked sequence in lower case
  type: boolean?
  inputBinding:
    prefix: -small
- id: in_xsmall
  doc: "Returns repetitive regions in lowercase (rest capitals) rather than\nmasked"
  type: boolean?
  inputBinding:
    prefix: -xsmall
- id: in_returns_repetitive_regions_masked
  doc: Returns repetitive regions masked with Xs rather than Ns
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_poly
  doc: Reports simple repeats that may be polymorphic (in file.poly)
  type: boolean?
  inputBinding:
    prefix: -poly
- id: in_source
  doc: "Includes for each annotation the HSP \"evidence\". Currently this\noption\
    \ is only available with the \"-html\" output format listed\nbelow."
  type: boolean?
  inputBinding:
    prefix: -source
- id: in_html
  doc: Creates an additional output file in xhtml format.
  type: File?
  inputBinding:
    prefix: -html
- id: in_ace
  doc: Creates an additional output file in ACeDB format
  type: File?
  inputBinding:
    prefix: -ace
- id: in_gff
  doc: Creates an additional Gene Feature Finding format output
  type: boolean?
  inputBinding:
    prefix: -gff
- id: in_creates_additional_file
  doc: Creates an additional annotation file not processed by
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_no_id
  doc: "Leaves out final column with unique ID for each element (was\ndefault)"
  type: boolean?
  inputBinding:
    prefix: -no_id
- id: in_xclncalculates_repeat_densities
  doc: "(xcln)\nCalculates repeat densities (in .tbl) excluding runs of >=20 N/Xs\
    \ in\nthe query"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_sequence_dot
  doc: "-e(ngine) [crossmatch|wublast|abblast|ncbi|hmmer|decypher]\nUse an alternate\
    \ search engine to the default."
  type: string
  inputBinding:
    position: 0
- id: in_process_repeats
  doc: -xm Creates an additional output file in cross_match format (for
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dir
  doc: "[directory name]\nWrites output to this directory (default is query file directory,\n\
    \"-dir .\" will write to current directory)."
  type: File?
  outputBinding:
    glob: $(inputs.in_dir)
- id: out_lignmentswrites_alignments_file
  doc: "(lignments)\nWrites alignments in .align output file"
  type: File?
  outputBinding:
    glob: $(inputs.in_lignmentswrites_alignments_file)
- id: out_html
  doc: Creates an additional output file in xhtml format.
  type: File?
  outputBinding:
    glob: $(inputs.in_html)
- id: out_ace
  doc: Creates an additional output file in ACeDB format
  type: File?
  outputBinding:
    glob: $(inputs.in_ace)
hints: []
cwlVersion: v1.1
baseCommand:
- RepeatMasker
