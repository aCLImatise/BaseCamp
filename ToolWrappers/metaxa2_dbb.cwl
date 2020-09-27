class: CommandLineTool
id: metaxa2_dbb.cwl
inputs:
- id: in_dna_fasta_file_containing_reference_sequences_single
  doc: ': DNA FASTA file containing the reference sequences of a single gene to be
    used for classification (overrides specific input options below)'
  type: string
  inputBinding:
    prefix: -i
- id: in_directory_name_output
  doc: ': Directory name for the output files'
  type: Directory
  inputBinding:
    prefix: -o
- id: in_gene_name_database
  doc: ': Gene name for the database'
  type: string
  inputBinding:
    prefix: -g
- id: in_use_hmms_computing
  doc: ': Use HMMs from the specified directory instead of computing new ones (i.e.
    only build a new classification database), not used by default'
  type: string
  inputBinding:
    prefix: -p
- id: in_taxonomy_file_containing
  doc: ": Taxonomy file containing taxonomic information to be parsed in any of the\
    \ following formats:\nMetaxa2, FASTA, ASN1, NCBI XML, INSD XML"
  type: string
  inputBinding:
    prefix: -t
- id: in_id_sequence_used
  doc: ": ID of the sequence that should be used as the representative sequence of\
    \ the gene\nif blank, the first sequence in the input file is used"
  type: string
  inputBinding:
    prefix: -r
- id: in_auto_rep
  doc: ': Choose a reference sequence automatically (requires Usearch to be installed),
    on (T) by default'
  type: string
  inputBinding:
    prefix: --auto_rep
- id: in_cpu
  doc: ': Number of CPUs to use (will be passed on to other programs), default = 1'
  type: string
  inputBinding:
    prefix: --cpu
- id: in_save_raw
  doc: ': Keep intermediate files after the program finishes, off (F) by default'
  type: string
  inputBinding:
    prefix: --save_raw
- id: in_plus
  doc: ': Use BLAST+ instead of legacy BLAST, off (F) by default'
  type: string
  inputBinding:
    prefix: --plus
- id: in_dna_fasta_file_containing_archaeal_sequences
  doc: ': DNA FASTA file containing archaeal reference sequences to be used for classification
    (cannot be combined with the -i option)'
  type: string
  inputBinding:
    prefix: -a
- id: in_dna_fasta_file_containing_bacterial_sequences
  doc: ': DNA FASTA file containing bacterial reference sequences to be used for classification
    (cannot be combined with the -i option)'
  type: string
  inputBinding:
    prefix: -b
- id: in_dna_fasta_file_containing_chloroplast_sequences
  doc: ': DNA FASTA file containing chloroplast reference sequences to be used for
    classification (cannot be combined with the -i option)'
  type: string
  inputBinding:
    prefix: -c
- id: in_dna_fasta_file_containing_eukaryote_sequences
  doc: ': DNA FASTA file containing eukaryote reference sequences to be used for classification
    (cannot be combined with the -i option)'
  type: string
  inputBinding:
    prefix: -e
- id: in_dna_fasta_file_containing_mitochondrial_reference_sequences
  doc: ': DNA FASTA file containing mitochondrial reference sequences to be used for
    classification (cannot be combined with the -i option)'
  type: string
  inputBinding:
    prefix: -m
- id: in_dna_fasta_file_containing_metazoan_mitochondrial_sequences
  doc: ': DNA FASTA file containing metazoan mitochondrial reference sequences to
    be used for classification (cannot be combined with the -i option)'
  type: string
  inputBinding:
    prefix: -n
- id: in_other
  doc: ': DNA FASTA file containing reference sequences of other origins to be used
    for classification (cannot be combined with the -i option)'
  type: string
  inputBinding:
    prefix: --other
- id: in_full_length
  doc: ': number of basepairs to use for full-length definition (set to zero to disable
    full-length extraction), default = 100'
  type: string
  inputBinding:
    prefix: --full_length
- id: in_conservation_score_cutoff
  doc: ': Conservation score cutoff, 4 by default, not used unless -A is set to false
    (F)'
  type: string
  inputBinding:
    prefix: -C
- id: in_noise_cutoff_minimal
  doc: ': Noise cutoff (minimal proportion of sequences required to be considered
    at each position). A number between 0 and 1, 0.1 by default'
  type: string
  inputBinding:
    prefix: -N
- id: in_autodetect_conservation_score
  doc: ': Auto-detect conservation score cutoff, on (T) by default'
  type: string
  inputBinding:
    prefix: -A
- id: in_minimal_conserved_proportion
  doc: ': Minimal conserved proportion of the alignment (until a lower conservation
    cutoff is considered), 0.6 by default'
  type: string
  inputBinding:
    prefix: -P
- id: in_lookahead_length_number
  doc: ': Look-ahead length (the number of residues to consider when determining the
    start and end of conserved regions), 5 by default'
  type: string
  inputBinding:
    prefix: -L
- id: in_minimal_conserved_length
  doc: ': Minimal conserved region length, 20 by default'
  type: string
  inputBinding:
    prefix: -M
- id: in_single_profile
  doc: ': Build only one single HMM for the entire alignment from the input sequences,
    off (F) by default'
  type: string
  inputBinding:
    prefix: --single_profile
- id: in_mode
  doc: ': Selects the mode in which the profile database is built, default is divergent'
  type: string
  inputBinding:
    prefix: --mode
- id: in_de_replicate
  doc: ': Will dereplicate the input data using Usearch before building the database,
    using the specified idenity threshold, off (F) by default'
  type: string
  inputBinding:
    prefix: --dereplicate
- id: in_filter_uncultured
  doc: ': Will try to filter out sequences that are derived from uncultured species,
    off (F) by default'
  type: string
  inputBinding:
    prefix: --filter_uncultured
- id: in_filter_level
  doc: ': Will filter out sequences with taxonomic information lower than the specified
    level, 0 by default'
  type: string
  inputBinding:
    prefix: --filter_level
- id: in_correct_taxonomy
  doc: ': Will try to correct the taxonomic information at order, family, genus and
    species level, off (F) by default'
  type: string
  inputBinding:
    prefix: --correct_taxonomy
- id: in_cutoffs
  doc: ': A string of number defining the cutoffs at different taxonomic levels. Will
    turn off automatic calculation of cutoffs. If blank, cutoffs are determined automatically,
    default is blank (off)'
  type: string
  inputBinding:
    prefix: --cutoffs
- id: in_sample
  doc: ': The number of sequences to aim to investigate when determining taxonomic
    cutoffs, 1000 by default'
  type: string
  inputBinding:
    prefix: --sample
- id: in_evaluate
  doc: ': Statistically evaluate the performance of the database built. This increases
    the time requirement for the process dramatically, off (F) by default'
  type: string
  inputBinding:
    prefix: --evaluate
- id: in_iterations
  doc: ': Number of iterations for the statistical evaluation, 10 by default'
  type: string
  inputBinding:
    prefix: --iterations
- id: in_test_sets
  doc: ': Proportion of sequences to leave out for testing. Several values can be
    specified, separated by commas, 0.1 by default'
  type: string
  inputBinding:
    prefix: --test_sets
- id: in_db
  doc: ': Skips building the database, and only runs the evaluation on the specified
    database, not used by default'
  type: string
  inputBinding:
    prefix: --db
- id: in_help
  doc: ': displays this help message'
  type: boolean
  inputBinding:
    prefix: --help
- id: in_bugs
  doc: ': displays the bug fixes and known bugs in this version of Metaxa'
  type: boolean
  inputBinding:
    prefix: --bugs
- id: in_license
  doc: ': displays licensing information'
  type: boolean
  inputBinding:
    prefix: --license
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_name_output
  doc: ': Directory name for the output files'
  type: Directory
  outputBinding:
    glob: $(inputs.in_directory_name_output)
cwlVersion: v1.1
baseCommand:
- metaxa2_dbb
