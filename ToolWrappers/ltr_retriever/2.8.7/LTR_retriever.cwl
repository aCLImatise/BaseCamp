class: CommandLineTool
id: LTR_retriever.cwl
inputs:
- id: in_genome
  doc: '[File]     specify the genome sequence file (FASTA)'
  type: boolean
  inputBinding:
    prefix: -genome
- id: in_in_harvest
  doc: '[File]     LTR-RT candidates from LTRharvest'
  type: boolean
  inputBinding:
    prefix: -inharvest
- id: in_in_finder
  doc: '[File]     LTR-RT candidates from LTR_FINDER'
  type: boolean
  inputBinding:
    prefix: -infinder
- id: in_in_mge_scan
  doc: '[File]     LTR-RT candidates from MGEScan_LTR'
  type: boolean
  inputBinding:
    prefix: -inmgescan
- id: in_non_tgc_a
  doc: '[File]     Non-canonical LTR-RT candidates from LTRharvest'
  type: boolean
  inputBinding:
    prefix: -nonTGCA
- id: in_verbose_slash_v
  doc: retain intermediate outputs (developer mode)
  type: boolean
  inputBinding:
    prefix: -verbose/-v
- id: in_no_an_no
  doc: disable whole genome LTR-RT annotation (no GFF output)
  type: boolean
  inputBinding:
    prefix: -noanno
- id: in_miss_char
  doc: '[CHR]      specify the ambiguous character (default N)'
  type: boolean
  inputBinding:
    prefix: -misschar
- id: in_n_screen
  doc: disable filtering ambiguous sequence in candidates
  type: boolean
  inputBinding:
    prefix: -Nscreen
- id: in_miss_max
  doc: '[INT]      maximum number of ambiguous bp allowed in a candidate (default
    10)'
  type: boolean
  inputBinding:
    prefix: -missmax
- id: in_miss_rate
  doc: '[0-1]      maximum percentage of ambiguous bp allowed in a candidate (default
    0.8)'
  type: boolean
  inputBinding:
    prefix: -missrate
- id: in_min_len
  doc: '[INT]      minimum bp of the LTR region (default 100)'
  type: boolean
  inputBinding:
    prefix: -minlen
- id: in_max_ratio
  doc: '[FLOAT]    maximum length ratio of internal region/LTR region (default 50)'
  type: boolean
  inputBinding:
    prefix: -max_ratio
- id: in_min_score
  doc: '[INT]      minimum alignment length (INT/2) to identify tandem repeats (default
    1000)'
  type: boolean
  inputBinding:
    prefix: -minscore
- id: in_flank_miss
  doc: '[1-60]     maximum ambiguous length (bp) allowed in 60bp-flanking sequences
    (default 25)'
  type: boolean
  inputBinding:
    prefix: -flankmiss
- id: in_flanks_im
  doc: '[0-100]    minimum percentage of identity for flanking sequence alignment
    (default 60)'
  type: boolean
  inputBinding:
    prefix: -flanksim
- id: in_flank_aln
  doc: '[0-1]      maximum alignment portion allowed for 60bp-flanking sequences (default
    0.6)'
  type: boolean
  inputBinding:
    prefix: -flankaln
- id: in_motif
  doc: "[[STRING]] specify non-canonical motifs to search for\n(default -motif [TCCA\
    \ TGCT TACA TACT TGGA TATA TGTA TGCA])"
  type: boolean
  inputBinding:
    prefix: -motif
- id: in_not_run_c
  doc: Discard truncated LTR-RTs and nested LTR-RTs (will dampen sensitivity)
  type: boolean
  inputBinding:
    prefix: -notrunc
- id: in_proco_vte
  doc: "[0-1]     maximum portion of allowed for cumulated DNA TE database and LINE\
    \ database\nlignments (default 0.7)"
  type: boolean
  inputBinding:
    prefix: -procovTE
- id: in_proco_vpl
  doc: '[0-1]     maximum portion allowed for cumulated plant protein database alignments
    (default 0.7)'
  type: boolean
  inputBinding:
    prefix: -procovPL
- id: in_pro_lens_ig
  doc: '[INT]      minimum alignment length (aa) for LINE/DNA transposase/plant protein
    alignment (default 30)'
  type: boolean
  inputBinding:
    prefix: -prolensig
- id: in_blast_clust
  doc: "[[STRING]] trigger to use blastclust and customize parameters\n(default -blastclust\
    \ [-L .9 -b T -S 80])"
  type: boolean
  inputBinding:
    prefix: -blastclust
- id: in_cd_hit
  doc: "[[STRING]] trigger to use cd-hit-est (default) and customize parameters\n\
    (default -cdhit [-c 0.8 -G 0.8 -s 0.9 -aL 0.9 -aS 0.9 -M 0])"
  type: boolean
  inputBinding:
    prefix: -cdhit
- id: in_line_lib
  doc: "[FASTA]    provide LINE transposase database for LINE TE exclusion\n(default\
    \ /database/Tpases020812LINE)"
  type: boolean
  inputBinding:
    prefix: -linelib
- id: in_dna_lib
  doc: "[FASTA]    provide DNA TE transposase database for DNA TE exclusion\n(default\
    \ /database/Tpases020812DNA)"
  type: boolean
  inputBinding:
    prefix: -dnalib
- id: in_plant_pro_lib
  doc: "[FASTA]    provide plant protein database for coding sequence exclusion\n\
    (default /database/alluniRefprexp082813)"
  type: boolean
  inputBinding:
    prefix: -plantprolib
- id: in_teh_mm
  doc: "[Pfam]     provide Pfam database for TE identification\n(default /database/TEfam.hmm)"
  type: boolean
  inputBinding:
    prefix: -TEhmm
- id: in_neutral_mutation_rate
  doc: '[FLOAT]    neutral mutation rate (per bp per ya) (default 1.3e-8 (from rice))'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_step
  doc: "[STRING]   restart the program from a particular step. Existing outputs will\
    \ be overwritten. Options:\nInit (default, from the beginning);\nMajor (Tandem\
    \ repeat cleanup finished, structrual analyses next)\nTrunc (Structural analyses\
    \ finished, truncated LTR recycle next)\nPromask (Truncated LTR recycle finished,\
    \ protein contamination cleanup next)\nLibrary (Protein contamination cleanup\
    \ finished, initial library construction next)\nNext (Initial library construction\
    \ finished, non-TGCA analyses next)"
  type: boolean
  inputBinding:
    prefix: -step
- id: in_threads
  doc: '[INT]      number of threads (≤ total available threads, default 4)'
  type: boolean
  inputBinding:
    prefix: -threads
- id: in_help_slash_h
  doc: display this help information
  type: boolean
  inputBinding:
    prefix: -help/-h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- LTR_retriever
