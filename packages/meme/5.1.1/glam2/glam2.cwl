class: CommandLineTool
id: glam2.cwl
inputs:
- id: in_output_directory_will
  doc: ': output directory; will not clobber existing files'
  type: Directory
  inputBinding:
    prefix: -o
- id: in_output_directory_glamout
  doc: ': output directory (glam2_out); allow clobbering'
  type: Directory
  inputBinding:
    prefix: -O
- id: in_number_alignment_runs
  doc: ': number of alignment runs (10)'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_end_run_many
  doc: ': end each run after this many iterations without improvement (10000)'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_examine_strands_forward
  doc: ': examine both strands - forward and reverse complement'
  type: boolean
  inputBinding:
    prefix: '-2'
- id: in_minimum_number_sequences
  doc: ': minimum number of sequences in the alignment (2)'
  type: boolean
  inputBinding:
    prefix: -z
- id: in_minimum_number_aligned
  doc: ': minimum number of aligned columns (2)'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_maximum_number_aligned
  doc: ': maximum number of aligned columns (50)'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_initial_number_aligned
  doc: ': initial number of aligned columns (20)'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_dirichlet_mixture_file
  doc: ': Dirichlet mixture file'
  type: boolean
  inputBinding:
    prefix: -d
- id: in__deletion_pseudocount
  doc: ': deletion pseudocount (0.1)'
  type: boolean
  inputBinding:
    prefix: -D
- id: in__nodeletion_pseudocount
  doc: ': no-deletion pseudocount (2.0)'
  type: boolean
  inputBinding:
    prefix: -E
- id: in__insertion_pseudocount
  doc: ': insertion pseudocount (0.02)'
  type: boolean
  inputBinding:
    prefix: -I
- id: in__noinsertion_pseudocount
  doc: ': no-insertion pseudocount (1.0)'
  type: boolean
  inputBinding:
    prefix: -J
- id: in_weight_generic_sequencesetspecific
  doc: ': weight for generic versus sequence-set-specific residue abundances (1e+99)'
  type: boolean
  inputBinding:
    prefix: -q
- id: in__initial_temperature
  doc: ': initial temperature (1.2)'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_cooling_factor_iterations
  doc: ': cooling factor per n iterations (1.44)'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_temperature_lower_bound
  doc: ': temperature lower bound (0.1)'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_print_progress_information
  doc: ': print progress information at each iteration'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_columnsampling_moves_sitesampling
  doc: ': column-sampling moves per site-sampling move (1.0)'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_site_sampling_algorithm
  doc: ': site sampling algorithm: 0=FAST 1=SLOW 2=FFT (0)'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_seed_pseudorandom_numbers
  doc: ': seed for pseudo-random numbers (1)'
  type: boolean
  inputBinding:
    prefix: -s
- id: in__run_quietly
  doc: ': run quietly'
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_print_version_exit
  doc: ': print version and exit (also accepts --version)'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_embed_sequence_file
  doc: ':  embed sequence file contents as hidden field in HTML'
  type: boolean
  inputBinding:
    prefix: -M
- id: in_make_email_address
  doc: ':  make email address a hidden field in HTML'
  type: string
  inputBinding:
    prefix: -A
- id: in_make_description_field
  doc: ':  make description a hidden field in HTML'
  type: string
  inputBinding:
    prefix: -X
- id: in_alphabet
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_my_seqs_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_will
  doc: ': output directory; will not clobber existing files'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory_will)
- id: out_output_directory_glamout
  doc: ': output directory (glam2_out); allow clobbering'
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory_glamout)
cwlVersion: v1.1
baseCommand:
- glam2
