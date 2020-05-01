#!/usr/bin/env cwl-runner

baseCommand:
- pipelign
class: CommandLineTool
cwlVersion: v1.0
id: pipelign
inputs:
- doc: Input sequence file in FASTA format
  id: in_file
  inputBinding:
    prefix: --inFile
  type: string
- doc: FASTA formatted output alignment file
  id: outfile
  inputBinding:
    prefix: --outFile
  type: string
- doc: 'Length threshold for full sequences (default: 0.7)'
  id: lent_hr
  inputBinding:
    prefix: --lenThr
  type: string
- doc: 'Input sequences can be dna/rna/aa (default: dna)'
  id: alphabet
  inputBinding:
    prefix: --alphabet
  type: string
- doc: Add fragments without clusters
  id: keep_orphans
  inputBinding:
    prefix: --keepOrphans
  type: boolean
- doc: Add long sequences with too many ambiguous residues
  id: keep_bad_seqs
  inputBinding:
    prefix: --keepBadSeqs
  type: boolean
- doc: Create zipped intermediate output files
  id: m_zip
  inputBinding:
    prefix: --mZip
  type: boolean
- doc: 'Percent sequence similarity for clustering (default: 0.8)'
  id: simper
  inputBinding:
    prefix: --simPer
  type: string
- doc: 'Run either (J)oblib/(G)NU parallel version (default: G)'
  id: run
  inputBinding:
    prefix: --run
  type: string
- doc: 'Merge using (P)arallel/(C)onsensus strategy  (default: P)'
  id: merge
  inputBinding:
    prefix: --merge
  type: string
- doc: 'Number of CPU/threads to use (default: 1)'
  id: thread
  inputBinding:
    prefix: --thread
  type: string
- doc: 'Number of iterations to refine long alignments (default: 1)'
  id: mite_rate_long
  inputBinding:
    prefix: --mIterateLong
  type: string
- doc: 'Number of iterations to refine merged alignment (default: 1)'
  id: miter_at_emerge
  inputBinding:
    prefix: --mIterateMerge
  type: string
- doc: Name for output directory to hold intermediate files
  id: outdir
  inputBinding:
    prefix: --outDir
  type: string
- doc: Remove files from existing output directory
  id: clear_existing_directory
  inputBinding:
    prefix: --clearExistingDirectory
  type: boolean
- doc: 'Proportion of ambiguous characters allowed in the long sequences (default:
    0.1)'
  id: am_big_per
  inputBinding:
    prefix: --ambigPer
  type: string
- doc: '{1,2,3,4,5,6}, --stage {1,2,3,4,5,6} 1  Make cluster alignments and HMM of
    long sequences 2  Align long sequences only 3  Assign fragments to clusters 4  Make
    cluster alignments with fragments 5  Align all sequences'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: Exclude clusters from final alignment
  id: exclude_clusters
  inputBinding:
    prefix: --excludeClusters
  type: boolean
