class: CommandLineTool
id: zga.cwl
inputs:
- id: in_first_step
  doc: 'First step of the pipeline. Default: readqc'
  type: string?
  inputBinding:
    prefix: --first-step
- id: in_last_step
  doc: 'Last step of the pipeline. Default: annotation'
  type: string?
  inputBinding:
    prefix: --last-step
- id: in_output_dir
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_force
  doc: Overwrite output directory if exists
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_threads
  doc: Number of CPU threads to use (where possible)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_memory_limit
  doc: Memory limit in GB (default 8)
  type: long?
  inputBinding:
    prefix: --memory-limit
- id: in_genus
  doc: Provide genus if known
  type: string?
  inputBinding:
    prefix: --genus
- id: in_species
  doc: Provide species if known
  type: string?
  inputBinding:
    prefix: --species
- id: in_strain
  doc: Provide strain if known
  type: string?
  inputBinding:
    prefix: --strain
- id: in_transparent
  doc: Show output from tools inside the pipeline
  type: boolean?
  inputBinding:
    prefix: --transparent
- id: in_domain
  doc: 'Provide prokaryotic domain: bacteria or archaea'
  type: string?
  inputBinding:
    prefix: --domain
- id: in_pe_one
  doc: "FASTQ file(s) with first (left) paired-end reads.\nSpace-separated if multiple."
  type: long[]
  inputBinding:
    prefix: --pe-1
- id: in_pe_two
  doc: "FASTQ file(s) with second (right) paired-end reads.\nSpace-separated if multiple."
  type: long[]
  inputBinding:
    prefix: --pe-2
- id: in_pe_merged
  doc: FASTQ file(s) with merged overlapped paired-end reads
  type: string[]
  inputBinding:
    prefix: --pe-merged
- id: in_single_end
  doc: FASTQ file(s) with unpaired or single-end reads
  type: string[]
  inputBinding:
    prefix: --single-end
- id: in_mp_one
  doc: Mate pair forward reads. SPAdes only
  type: long[]
  inputBinding:
    prefix: --mp-1
- id: in_mp_two
  doc: Mate pair forward reads. SPAdes only
  type: long[]
  inputBinding:
    prefix: --mp-2
- id: in_pac_bio
  doc: PacBio reads. Space-separated if multiple.
  type: string[]
  inputBinding:
    prefix: --pacbio
- id: in_nano_pore
  doc: Nanopore reads. Space-separated if multiple.
  type: string[]
  inputBinding:
    prefix: --nanopore
- id: in_quality_cut_off
  doc: 'Base quality cutoff for short reads, default: 18'
  type: long?
  inputBinding:
    prefix: --quality-cutoff
- id: in_adapters
  doc: "Adapter sequences for short reads trimming (FASTA). By\ndefault Illumina and\
    \ BGI adapter sequences are used."
  type: string?
  inputBinding:
    prefix: --adapters
- id: in_filter_by_tile
  doc: Filter short reads based on positional quality over a
  type: boolean?
  inputBinding:
    prefix: --filter-by-tile
- id: in_tadpole_correct
  doc: "Perform error correction of short reads with\ntadpole.sh from BBtools.SPAdes\
    \ correction may be\ndisabled with \"--no-spades-correction\"."
  type: boolean?
  inputBinding:
    prefix: --tadpole-correct
- id: in_bb_merge_extend
  doc: "Perform k-mer read extension by specified length if\ninitial merging wasn't\
    \ succesfull."
  type: long?
  inputBinding:
    prefix: --bbmerge-extend
- id: in_bb_merge_extend_km_er
  doc: K-mer length for read extension, default 40.
  type: long?
  inputBinding:
    prefix: --bbmerge-extend-kmer
- id: in_bb_merge_trim
  doc: "Before merging trim bases with phred score less than a\nspecified value."
  type: string?
  inputBinding:
    prefix: --bbmerge-trim
- id: in_calculate_genome_size
  doc: Estimate genome size with mash.
  type: boolean?
  inputBinding:
    prefix: --calculate-genome-size
- id: in_genome_size_estimation
  doc: "Genome size in bp (no K/M suffix supported) for Flye\nassembler, if known."
  type: long?
  inputBinding:
    prefix: --genome-size-estimation
- id: in_mash_km_er_copies
  doc: "Minimum copies of each k-mer to include in size\nestimation"
  type: long?
  inputBinding:
    prefix: --mash-kmer-copies
- id: in_use_unknown_mp
  doc: "NxTrim: Include reads that are probably mate pairs\n(default: only known MP\
    \ used)"
  type: boolean?
  inputBinding:
    prefix: --use-unknown-mp
- id: in_no_nx_trim
  doc: "Don't process mate-pair reads with NxTrim. Usefull for\npreprocessed reads"
  type: boolean?
  inputBinding:
    prefix: --no-nxtrim
- id: in_assembler
  doc: "Assembler: unicycler (default; better quality), spades\n(faster, may use mate-pair\
    \ reads) or Flye (long reads\nonly)."
  type: string?
  inputBinding:
    prefix: --assembler
- id: in_no_spades_correction
  doc: "Disable short read correction by SPAdes (works for\nSPAdes and unicycler)."
  type: boolean?
  inputBinding:
    prefix: --no-spades-correction
- id: in_use_scaffolds
  doc: 'SPAdes: Use assembled scaffolds. Contigs are used by'
  type: boolean?
  inputBinding:
    prefix: --use-scaffolds
- id: in_unicycle_r_mode
  doc: "Unicycler: assember mode: conservative, normal\n(default) or bold."
  type: string?
  inputBinding:
    prefix: --unicycler-mode
- id: in_linear_seqs
  doc: Expected number of linear sequences
  type: long?
  inputBinding:
    prefix: --linear-seqs
- id: in_extract_replicons
  doc: "Unicycler: extract complete replicons (e.g. plasmids)\nfrom the short-read\
    \ based assembly to separate files"
  type: boolean?
  inputBinding:
    prefix: --extract-replicons
- id: in_flye_short_polish
  doc: "Perform polishing of Flye assembly with short reads\nusing racon."
  type: boolean?
  inputBinding:
    prefix: --flye-short-polish
- id: in_flye_skip_long_polish
  doc: Skip stage of genome polishing with long reads.
  type: boolean?
  inputBinding:
    prefix: --flye-skip-long-polish
- id: in_perform_polishing
  doc: "Perform polishing. Useful only for flye assembly of\nlong reads and short\
    \ reads available."
  type: boolean?
  inputBinding:
    prefix: --perform-polishing
- id: in_polishing_iterations
  doc: Number of polishing iterations.
  type: long?
  inputBinding:
    prefix: --polishing-iterations
- id: in_check_phi_x
  doc: Check genome for presence of PhiX control sequence.
  type: boolean?
  inputBinding:
    prefix: --check-phix
- id: in_check_m_mode
  doc: "Select CheckM working mode. Default is checking for\ndomain-specific marker-set."
  type: string?
  inputBinding:
    prefix: --checkm-mode
- id: in_check_m_rank
  doc: "Rank of taxon for CheckM. Run 'checkm taxon_list' for\ndetails."
  type: string?
  inputBinding:
    prefix: --checkm-rank
- id: in_check_m_tax_on
  doc: Taxon for CheckM. Run 'checkm taxon_list' for details.
  type: string?
  inputBinding:
    prefix: --checkm-taxon
- id: in_check_m_full_tree
  doc: "Use full tree for inference of marker set, requires\nLOTS of memory."
  type: boolean?
  inputBinding:
    prefix: --checkm-full-tree
- id: in_genome
  doc: Genome assembly (when starting from annotation).
  type: string?
  inputBinding:
    prefix: --genome
- id: in_g_code
  doc: Genetic code.
  type: string?
  inputBinding:
    prefix: --gcode
- id: in_locus_tag
  doc: "Locus tag prefix. If not provided prefix will be\ngenerated from MD5 checksum."
  type: long?
  inputBinding:
    prefix: --locus-tag
- id: in_locus_tag_inc
  doc: Locus tag increment, default = 10
  type: long?
  inputBinding:
    prefix: --locus-tag-inc
- id: in_center_name
  doc: Genome center name.
  type: string?
  inputBinding:
    prefix: --center-name
- id: in_minimum_contig_length
  doc: "Minimum sequence length in genome assembly.\n"
  type: long?
  inputBinding:
    prefix: --minimum-contig-length
- id: in_flow_cell_dot
  doc: --min-short-read-length MIN_SHORT_READ_LENGTH
  type: string
  inputBinding:
    position: 0
- id: in_trimming_dot
  doc: --entropy-cutoff ENTROPY_CUTOFF
  type: string
  inputBinding:
    position: 0
- id: in_default_dot
  doc: --spades-k-list SPADES_K_LIST
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_force
  doc: Overwrite output directory if exists
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/zga:0.0.9--py_0
cwlVersion: v1.1
baseCommand:
- zga
