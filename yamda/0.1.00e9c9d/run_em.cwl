class: CommandLineTool
id: run_em.py.cwl
inputs:
- id: input
  doc: Input FASTA file
  type: string
  inputBinding:
    prefix: --input
- id: input_2
  doc: Input FASTA file of negative sequences
  type: string
  inputBinding:
    prefix: --input2
- id: batch_size
  doc: 'Input batch size for training (default: 1000)'
  type: string
  inputBinding:
    prefix: --batchsize
- id: alpha
  doc: 'Alphabet (default: dna)'
  type: string
  inputBinding:
    prefix: --alpha
- id: rev_comp
  doc: 'Consider both the given strand and the reverse complement strand when searching
    for motifs in a complementable alphabet (default: consider given strand only).'
  type: boolean
  inputBinding:
    prefix: --revcomp
- id: model
  doc: 'Model (default: tcm)'
  type: string
  inputBinding:
    prefix: --model
- id: erase_whole
  doc: 'Erase an entire sequence if it contains a discovered motif (default: erase
    individual motif occurrences).'
  type: boolean
  inputBinding:
    prefix: --erasewhole
- id: fudge
  doc: 'Fudge factor to help with extremely rare motifs. Should be >0 and <=1 (default:
    0.1).'
  type: string
  inputBinding:
    prefix: --fudge
- id: width
  doc: 'Motif width (default: 20).'
  type: string
  inputBinding:
    prefix: --width
- id: half_length
  doc: 'k-mer half-length for gapped k-mer search seeding (default: 6).'
  type: string
  inputBinding:
    prefix: --halflength
- id: n_motifs
  doc: 'Number of motifs to find (default: 1).'
  type: string
  inputBinding:
    prefix: --nmotifs
- id: min_sites
  doc: 'Minimum number of motif occurrences (default: 100).'
  type: long
  inputBinding:
    prefix: --minsites
- id: max_sites
  doc: Maximum number of motif occurrences. If left unspecified, will default to number
    ofsequences.
  type: long
  inputBinding:
    prefix: --maxsites
- id: n_seeds
  doc: Number of motif seeds to try. If left unspecified, will default to 100 (for
    gapped k-mersearch) or 1000 (for randomly sampled subsequence method).
  type: string
  inputBinding:
    prefix: --nseeds
- id: maxiter
  doc: 'Maximum number of refining iterations of batch EM to run from any starting
    point. Batch EM is run for maxiter iterations or until convergence (see -tolerance,
    below) from each starting point for refining (default: 20)'
  type: long
  inputBinding:
    prefix: --maxiter
- id: tolerance
  doc: 'Stop iterating refining batch/on-line EM when the change in the motif probability
    matrix is less than tolerance. Change is defined as the euclidean distance between
    two successive frequency matrices (default: 1e-3).'
  type: string
  inputBinding:
    prefix: --tolerance
- id: no_cuda
  doc: Disable the default CUDA training.
  type: boolean
  inputBinding:
    prefix: --no_cuda
- id: seed
  doc: 'Random seed for reproducibility (default: 1337).'
  type: string
  inputBinding:
    prefix: --seed
- id: output_dir
  doc: The output directory. Causes error if the directory already exists.
  type: string
  inputBinding:
    prefix: --outputdir
- id: output_dirc
  doc: The output directory. Will overwrite if directory already exists.
  type: string
  inputBinding:
    prefix: --outputdirc
outputs: []
cwlVersion: v1.1
baseCommand:
- run_em.py
