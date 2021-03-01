class: CommandLineTool
id: ngshmmalign.cwl
inputs:
- id: in_file_containing_profilemsa
  doc: File containing the profile/MSA of the
  type: File?
  inputBinding:
    prefix: -r
- id: in_alnsam_filename_written
  doc: (=aln.sam)                Filename where alignment will be written to
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_devnull_filename
  doc: "[ --wrong ] arg (=/dev/null)  Filename where alignment will be written\nthat\
    \ are filtered (too short, unpaired)"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_number_threads_use
  doc: "(=8)                      Number of threads to use for alignment.\nDefaults\
    \ to number of logical cores found"
  type: long?
  inputBinding:
    prefix: -t
- id: in_clean_mafft_files
  doc: Do not clean up MAFFT temporary MSA files
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_use_search_avoiding
  doc: Use full-exhaustive search, avoiding indexed
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_consensus_name_willbe
  doc: "(=CONSENSUS)              Name of consensus reference contig that will\nbe\
    \ created"
  type: string?
  inputBinding:
    prefix: -N
- id: in_loci_ambiguous_bases
  doc: "Loci with ambiguous bases get their emission\nprobabilities according to their\
    \ allele\nfrequencies. In practice this is\nundesirable, as it leads to systematic\n\
    accumulation of gaps in homopolymeric\nregions with SNVs"
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_arg_value_seed
  doc: "[ --seed ] arg (=42)          Value of seed for deterministic run. A value\n\
    of 0 will pick a random seed from some\nnon-deterministic entropy source"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_hardclip_reads_bases
  doc: "Hard-clip reads. Clipped bases will NOT be\nin the sequence in the alignment"
  type: boolean?
  inputBinding:
    prefix: --hard
- id: in_extreme_hardclip_reads
  doc: "Extreme Hard-clip reads. Do not write\nhard-clip in CIGAR, as if the hard-clipped\n\
    bases never existed. Mutually exclusive with\nprevious option"
  type: boolean?
  inputBinding:
    prefix: --HARD
- id: in_show_progress_indicator
  doc: Show progress indicator while aligning
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_l_minimum_mapped
  doc: (=L * 0.8)                Minimum mapped length of read
  type: long?
  inputBinding:
    prefix: -M
- id: in_minimum_frequency_calling
  doc: (=0.05)                   Minimum frequency for calling ambiguous base
  type: double?
  inputBinding:
    prefix: -a
- id: in_error
  doc: (=0.005)             Global substitution probability
  type: double?
  inputBinding:
    prefix: --error
- id: in_go
  doc: (=1e-4)                 Gap open probability
  type: double?
  inputBinding:
    prefix: --go
- id: in_ge
  doc: (=0.30)                 Gap extend probability
  type: double?
  inputBinding:
    prefix: --ge
- id: in_io
  doc: (=5e-5)                 Insert open probability
  type: double?
  inputBinding:
    prefix: --io
- id: in_ie
  doc: (=0.50)                 Insert extend probability
  type: double?
  inputBinding:
    prefix: --ie
- id: in_ep
  doc: "(=1/L)                  Jump to end probability; usually 1/L, where\nL is\
    \ the average length of the reads"
  type: long?
  inputBinding:
    prefix: --ep
- id: in_lco
  doc: (=0.10)                Left clip open probability
  type: double?
  inputBinding:
    prefix: --lco
- id: in_lce
  doc: (=0.90)                Left clip extend probability
  type: double?
  inputBinding:
    prefix: --lce
- id: in_rco
  doc: (=lco/L)               Right clip open probability
  type: string?
  inputBinding:
    prefix: --rco
- id: in_rce
  doc: (=0.90)                Right clip extend probability
  type: double?
  inputBinding:
    prefix: --rce
- id: in_reference
  doc: '-R arg                           File containing the profile/MSA of the '
  type: string
  inputBinding:
    position: 0
- id: in_lookup
  doc: "-X                               Replace general aligned state 'M' with '=' "
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ngshmmalign
