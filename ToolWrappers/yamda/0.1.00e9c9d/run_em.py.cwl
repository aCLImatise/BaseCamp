class: CommandLineTool
id: run_em.py.cwl
inputs:
- id: in_input
  doc: Input FASTA file
  type: File
  inputBinding:
    prefix: --input
- id: in_input_two
  doc: Input FASTA file of negative sequences
  type: long
  inputBinding:
    prefix: --input2
- id: in_batch_size
  doc: 'Input batch size for training (default: 1000)'
  type: long
  inputBinding:
    prefix: --batchsize
- id: in_alpha
  doc: 'Alphabet (default: dna)'
  type: string
  inputBinding:
    prefix: --alpha
- id: in_rev_comp
  doc: 'Consider both the given strand and the reverse complement strand when searching
    for motifs in a complementable alphabet (default: consider given strand only).'
  type: boolean
  inputBinding:
    prefix: --revcomp
- id: in_model
  doc: 'Model (default: tcm)'
  type: string
  inputBinding:
    prefix: --model
- id: in_erase_whole
  doc: 'Erase an entire sequence if it contains a discovered motif (default: erase
    individual motif occurrences).'
  type: boolean
  inputBinding:
    prefix: --erasewhole
- id: in_fudge
  doc: 'Fudge factor to help with extremely rare motifs. Should be >0 and <=1 (default:
    0.1).'
  type: double
  inputBinding:
    prefix: --fudge
- id: in_width
  doc: 'Motif width (default: 20).'
  type: long
  inputBinding:
    prefix: --width
- id: in_half_length
  doc: 'k-mer half-length for gapped k-mer search seeding (default: 6).'
  type: long
  inputBinding:
    prefix: --halflength
- id: in_n_motifs
  doc: 'Number of motifs to find (default: 1).'
  type: long
  inputBinding:
    prefix: --nmotifs
- id: in_min_sites
  doc: 'Minimum number of motif occurrences (default: 100).'
  type: long
  inputBinding:
    prefix: --minsites
- id: in_max_sites
  doc: Maximum number of motif occurrences. If left unspecified, will default to number
    ofsequences.
  type: long
  inputBinding:
    prefix: --maxsites
- id: in_n_seeds
  doc: Number of motif seeds to try. If left unspecified, will default to 100 (for
    gapped k-mersearch) or 1000 (for randomly sampled subsequence method).
  type: long
  inputBinding:
    prefix: --nseeds
- id: in_maxiter
  doc: 'Maximum number of refining iterations of batch EM to run from any starting
    point. Batch EM is run for maxiter iterations or until convergence (see -tolerance,
    below) from each starting point for refining (default: 20)'
  type: long
  inputBinding:
    prefix: --maxiter
- id: in_tolerance
  doc: 'Stop iterating refining batch/on-line EM when the change in the motif probability
    matrix is less than tolerance. Change is defined as the euclidean distance between
    two successive frequency matrices (default: 1e-3).'
  type: double
  inputBinding:
    prefix: --tolerance
- id: in_no_cuda
  doc: Disable the default CUDA training.
  type: boolean
  inputBinding:
    prefix: --no_cuda
- id: in_seed
  doc: 'Random seed for reproducibility (default: 1337).'
  type: long
  inputBinding:
    prefix: --seed
- id: in_output_dir
  doc: The output directory. Causes error if the directory already exists.
  type: Directory
  inputBinding:
    prefix: --outputdir
- id: in_output_dirc
  doc: The output directory. Will overwrite if directory already exists.
  type: Directory
  inputBinding:
    prefix: --outputdirc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: The output directory. Causes error if the directory already exists.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_output_dirc
  doc: The output directory. Will overwrite if directory already exists.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dirc)
cwlVersion: v1.1
baseCommand:
- run_em.py
