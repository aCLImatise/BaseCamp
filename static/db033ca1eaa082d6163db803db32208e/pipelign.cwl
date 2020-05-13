class: CommandLineTool
id: pipelign.cwl
inputs:
- id: in_file
  doc: Input sequence file in FASTA format
  type: string
  inputBinding:
    prefix: --inFile
- id: outfile
  doc: FASTA formatted output alignment file
  type: string
  inputBinding:
    prefix: --outFile
- id: lent_hr
  doc: 'Length threshold for full sequences (default: 0.7)'
  type: string
  inputBinding:
    prefix: --lenThr
- id: alphabet
  doc: 'Input sequences can be dna/rna/aa (default: dna)'
  type: string
  inputBinding:
    prefix: --alphabet
- id: keep_orphans
  doc: Add fragments without clusters
  type: boolean
  inputBinding:
    prefix: --keepOrphans
- id: keep_bad_seqs
  doc: Add long sequences with too many ambiguous residues
  type: boolean
  inputBinding:
    prefix: --keepBadSeqs
- id: m_zip
  doc: Create zipped intermediate output files
  type: boolean
  inputBinding:
    prefix: --mZip
- id: simper
  doc: 'Percent sequence similarity for clustering (default: 0.8)'
  type: string
  inputBinding:
    prefix: --simPer
- id: run
  doc: 'Run either (J)oblib/(G)NU parallel version (default: G)'
  type: string
  inputBinding:
    prefix: --run
- id: merge
  doc: 'Merge using (P)arallel/(C)onsensus strategy  (default: P)'
  type: string
  inputBinding:
    prefix: --merge
- id: thread
  doc: 'Number of CPU/threads to use (default: 1)'
  type: string
  inputBinding:
    prefix: --thread
- id: mite_rate_long
  doc: 'Number of iterations to refine long alignments (default: 1)'
  type: string
  inputBinding:
    prefix: --mIterateLong
- id: miter_at_emerge
  doc: 'Number of iterations to refine merged alignment (default: 1)'
  type: string
  inputBinding:
    prefix: --mIterateMerge
- id: outdir
  doc: Name for output directory to hold intermediate files
  type: string
  inputBinding:
    prefix: --outDir
- id: clear_existing_directory
  doc: Remove files from existing output directory
  type: boolean
  inputBinding:
    prefix: --clearExistingDirectory
- id: am_big_per
  doc: 'Proportion of ambiguous characters allowed in the long sequences (default:
    0.1)'
  type: string
  inputBinding:
    prefix: --ambigPer
- id: n
  doc: '{1,2,3,4,5,6}, --stage {1,2,3,4,5,6} 1  Make cluster alignments and HMM of
    long sequences 2  Align long sequences only 3  Assign fragments to clusters 4  Make
    cluster alignments with fragments 5  Align all sequences'
  type: boolean
  inputBinding:
    prefix: -n
- id: exclude_clusters
  doc: Exclude clusters from final alignment
  type: boolean
  inputBinding:
    prefix: --excludeClusters
outputs: []
cwlVersion: v1.1
baseCommand:
- pipelign
