class: CommandLineTool
id: pipelign.cwl
inputs:
- id: in_in_file
  doc: Input sequence file in FASTA format
  type: File
  inputBinding:
    prefix: --inFile
- id: in_outfile
  doc: FASTA formatted output alignment file
  type: File
  inputBinding:
    prefix: --outFile
- id: in_lent_hr
  doc: 'Length threshold for full sequences (default: 0.7)'
  type: long
  inputBinding:
    prefix: --lenThr
- id: in_alphabet
  doc: 'Input sequences can be dna/rna/aa (default: dna)'
  type: string
  inputBinding:
    prefix: --alphabet
- id: in_keep_orphans
  doc: Add fragments without clusters
  type: boolean
  inputBinding:
    prefix: --keepOrphans
- id: in_keep_bad_seqs
  doc: Add long sequences with too many ambiguous residues
  type: boolean
  inputBinding:
    prefix: --keepBadSeqs
- id: in_m_zip
  doc: Create zipped intermediate output files
  type: boolean
  inputBinding:
    prefix: --mZip
- id: in_simper
  doc: 'Percent sequence similarity for clustering (default: 0.8)'
  type: double
  inputBinding:
    prefix: --simPer
- id: in_run
  doc: 'Run either (J)oblib/(G)NU parallel version (default: G)'
  type: string
  inputBinding:
    prefix: --run
- id: in_merge
  doc: 'Merge using (P)arallel/(C)onsensus strategy  (default: P)'
  type: string
  inputBinding:
    prefix: --merge
- id: in_thread
  doc: 'Number of CPU/threads to use (default: 1)'
  type: long
  inputBinding:
    prefix: --thread
- id: in_mite_rate_long
  doc: 'Number of iterations to refine long alignments (default: 1)'
  type: long
  inputBinding:
    prefix: --mIterateLong
- id: in_miter_at_emerge
  doc: 'Number of iterations to refine merged alignment (default: 1)'
  type: long
  inputBinding:
    prefix: --mIterateMerge
- id: in_outdir
  doc: Name for output directory to hold intermediate files
  type: Directory
  inputBinding:
    prefix: --outDir
- id: in_clear_existing_directory
  doc: Remove files from existing output directory
  type: Directory
  inputBinding:
    prefix: --clearExistingDirectory
- id: in_am_big_per
  doc: 'Proportion of ambiguous characters allowed in the long sequences (default:
    0.1)'
  type: double
  inputBinding:
    prefix: --ambigPer
- id: in_stage
  doc: "1  Make cluster alignments and HMM of long sequences\n2  Align long sequences\
    \ only\n3  Assign fragments to clusters\n4  Make cluster alignments with fragments\n\
    5  Align all sequences"
  type: string
  inputBinding:
    prefix: --stage
- id: in_exclude_clusters
  doc: "Exclude clusters from final alignment\n"
  type: boolean
  inputBinding:
    prefix: --excludeClusters
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: FASTA formatted output alignment file
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_outdir
  doc: Name for output directory to hold intermediate files
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_clear_existing_directory
  doc: Remove files from existing output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_clear_existing_directory)
cwlVersion: v1.1
baseCommand:
- pipelign
