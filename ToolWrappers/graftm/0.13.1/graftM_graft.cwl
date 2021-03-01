class: CommandLineTool
id: graftM_graft.cwl
inputs:
- id: in_forward
  doc: Path to the reads you wish to run through GraftM, either in fasta (.fa) or
    fastq (.fq), optionally gzip-compressed (.gz). If you would like to run multiple
    samples at once, provide a space separated list of the file paths
  type: string[]
  inputBinding:
    prefix: --forward
- id: in_reverse
  doc: "read [reverse read ...]\nIf you have paired end data, you may wish to provide\
    \ the reverse reads. If you are running more than one dataset, please ensure that\
    \ the order of the files passed to the --forward and --reverse flags is consistent."
  type: string?
  inputBinding:
    prefix: --reverse
- id: in_interleaved
  doc: Path to the reads you wish to run through GraftM, either in fasta (.fa) or
    fastq (.fq), optionally gzip-compressed (.gz). If you would like to run multiple
    samples at once, provide a space separated list of the file paths
  type: string[]
  inputBinding:
    prefix: --interleaved
- id: in_graft_m_package
  doc: Path to the gene specific GraftM package (gpkg).
  type: File?
  inputBinding:
    prefix: --graftm_package
- id: in_threads
  doc: 'The number of threads to be used when running hmmsearch and pplacer (default:
    5)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_input_sequence_type
  doc: 'Specify whether the input sequence is "nucleotide" or "aminoacid" sequence
    data (default: guess)'
  type: string?
  inputBinding:
    prefix: --input_sequence_type
- id: in_filter_minimum
  doc: 'Minimum number of positions that must be aligned for a sequence to be placed
    in the phylogenetic tree (default: 95bp for nucleotide packages, 30 aa for protein
    packages)'
  type: long?
  inputBinding:
    prefix: --filter_minimum
- id: in_evalue
  doc: 'Specify the evalue cutoff for the hmmsearch, if you would like to use a cutoff
    different to the default or the trusted cutoff (TC) within the HMM. (default:
    1e-5)'
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_search_and_align_only
  doc: Stop GraftM running after reads have been identified and aligned (i.e. no placement
    step)
  type: boolean?
  inputBinding:
    prefix: --search_and_align_only
- id: in_search_only
  doc: Stop GraftM running after reads have been identified (i.e. no alignment or
    placement steps)
  type: boolean?
  inputBinding:
    prefix: --search_only
- id: in_e_uk_check
  doc: Cross check identified reads using an 18S specific HMM to help filter out eukaryotic
    ribosomal reads
  type: boolean?
  inputBinding:
    prefix: --euk_check
- id: in_search_method
  doc: "{hmmsearch,diamond,hmmsearch+diamond}\nSearch method (default: hmmsearch)"
  type: boolean?
  inputBinding:
    prefix: --search_method
- id: in_decoy_database
  doc: Path to a diamond database. Sequences with better hits to these proteins will
    be excluded.
  type: File?
  inputBinding:
    prefix: --decoy_database
- id: in_maximum_range
  doc: Maximum range to use when searching for potentially linked reads (when searching
    contigs)
  type: string?
  inputBinding:
    prefix: --maximum_range
- id: in_expand_search_contigs
  doc: Provide an assembly of the sample being searched. This assembly will initially
    be searched for full length genes, from which a sample specific HMM model will
    be created and used in the search step of graftM.
  type: string[]
  inputBinding:
    prefix: --expand_search_contigs
- id: in_search_hmm_files
  doc: Specify a list of paths to custom HMM(s) to search the data with.
  type: string[]
  inputBinding:
    prefix: --search_hmm_files
- id: in_search_hmm_list_file
  doc: a file containing a list of paths to custom HMM(s) to search the data with
    (one per line).
  type: File?
  inputBinding:
    prefix: --search_hmm_list_file
- id: in_search_diamond_file
  doc: Specify a DIAMOND database with which to search/classify the reads.
  type: File?
  inputBinding:
    prefix: --search_diamond_file
- id: in_aln_hmm_file
  doc: Reads will be aligned to this HMM after identification. N.B. This option can
    only be used if no placement is required.
  type: File?
  inputBinding:
    prefix: --aln_hmm_file
- id: in_assignment_method
  doc: 'Taxonomic assignment method, either pplacer (phylogenetic) or DIAMOND (pairwise).
    default = pplacer (default: pplacer)'
  type: string?
  inputBinding:
    prefix: --assignment_method
- id: in_placements_cut_off
  doc: 'This flag allows you to change the likelihood cutoff for phylogenetic placement
    of reads. (default: 0.75)'
  type: double?
  inputBinding:
    prefix: --placements_cutoff
- id: in_resolve_placements
  doc: Ignore the placements cutoff and simply use the best placement assigned to
    the read.
  type: boolean?
  inputBinding:
    prefix: --resolve_placements
- id: in_no_merge_reads
  doc: When this flag is specified, the alignment of the forward and reverse reads
    will not be merged before placement. If paired reads are provided, pair with the
    most confident placement will be used for classification.
  type: boolean?
  inputBinding:
    prefix: --no_merge_reads
- id: in_e_uk_hmm_file
  doc: Use this flag to specify the HMM that is used in the Eukaryotic contamination
    screen
  type: File?
  inputBinding:
    prefix: --euk_hmm_file
- id: in_min_orf_length
  doc: 'Minimum number of nucleotides in an open reading frame (default: 96)'
  type: long?
  inputBinding:
    prefix: --min_orf_length
- id: in_restrict_read_length
  doc: Only use this many base pairs at the start of each sequence searched
  type: long?
  inputBinding:
    prefix: --restrict_read_length
- id: in_verbosity
  doc: '1 - 5, 1 being silent, 5 being noisy indeed. (default: 4)'
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_log
  doc: Output logging information to this file
  type: File?
  inputBinding:
    prefix: --log
- id: in_output_directory
  doc: 'Output directory name (default: GraftM_output)'
  type: Directory?
  inputBinding:
    prefix: --output_directory
- id: in_force
  doc: Force overwrite the output directory if one already exists with the same name
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_max_samples_for_krona
  doc: 'If the number of samples is greater than this, do not output KRONA diagram
    (default: 100)'
  type: long?
  inputBinding:
    prefix: --max_samples_for_krona
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log
  doc: Output logging information to this file
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
- id: out_output_directory
  doc: 'Output directory name (default: GraftM_output)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_force
  doc: Force overwrite the output directory if one already exists with the same name
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
hints: []
cwlVersion: v1.1
baseCommand:
- graftM
- graft
