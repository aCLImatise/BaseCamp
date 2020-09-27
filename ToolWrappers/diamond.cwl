class: CommandLineTool
id: diamond.cwl
inputs:
- id: in_threads
  doc: (-p)           number of CPU threads
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_db
  doc: (-d)                database file
  type: boolean
  inputBinding:
    prefix: --db
- id: in_out
  doc: (-o)               output file
  type: File
  inputBinding:
    prefix: --out
- id: in_out_fmt
  doc: "(-f)            output format\n0   = BLAST pairwise\n5   = BLAST XML\n6  \
    \ = BLAST tabular\n100 = DIAMOND alignment archive (DAA)\n101 = SAM\nValue 6 may\
    \ be followed by a space-separated list of these keywords:\nqseqid means Query\
    \ Seq - id\nqlen means Query sequence length\nsseqid means Subject Seq - id\n\
    sallseqid means All subject Seq - id(s), separated by a ';'\nslen means Subject\
    \ sequence length\nqstart means Start of alignment in query\nqend means End of\
    \ alignment in query\nsstart means Start of alignment in subject\nsend means End\
    \ of alignment in subject\nqseq means Aligned part of query sequence\nfull_qseq\
    \ means Query sequence\nsseq means Aligned part of subject sequence\nfull_sseq\
    \ means Subject sequence\nevalue means Expect value\nbitscore means Bit score\n\
    score means Raw score\nlength means Alignment length\npident means Percentage\
    \ of identical matches\nnident means Number of identical matches\nmismatch means\
    \ Number of mismatches\npositive means Number of positive - scoring matches\n\
    gapopen means Number of gap openings\ngaps means Total number of gaps\nppos means\
    \ Percentage of positive - scoring matches\nqframe means Query frame\nbtop means\
    \ Blast traceback operations(BTOP)\ncigar means CIGAR string\nstaxids means unique\
    \ Subject Taxonomy ID(s), separated by a ';' (in numerical order)\nsscinames means\
    \ unique Subject Scientific Name(s), separated by a ';'\nsskingdoms means unique\
    \ Subject Super Kingdom(s), separated by a ';'\nskingdoms means unique Subject\
    \ Kingdom(s), separated by a ';'\nsphylums means unique Subject Phylum(s), separated\
    \ by a ';'\nstitle means Subject Title\nsalltitles means All Subject Title(s),\
    \ separated by a '<>'\nqcovhsp means Query Coverage Per HSP\nscovhsp means Subject\
    \ Coverage Per HSP\nqtitle means Query title\nqqual means Query quality values\
    \ for the aligned part of the query\nfull_qqual means Query quality values\nqstrand\
    \ means Query strand\nDefault: qseqid sseqid pident length mismatch gapopen qstart\
    \ qend sstart send evalue bitscore"
  type: boolean
  inputBinding:
    prefix: --outfmt
- id: in_verbose
  doc: (-v)           verbose console output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_log
  doc: enable debug log
  type: boolean
  inputBinding:
    prefix: --log
- id: in_quiet
  doc: disable console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_header
  doc: Write header lines to blast tabular format.
  type: boolean
  inputBinding:
    prefix: --header
- id: in_in
  doc: input reference file in FASTA format
  type: boolean
  inputBinding:
    prefix: --in
- id: in_taxon_map
  doc: protein accession to taxid mapping file
  type: boolean
  inputBinding:
    prefix: --taxonmap
- id: in_tax_on_nodes
  doc: taxonomy nodes.dmp from NCBI
  type: boolean
  inputBinding:
    prefix: --taxonnodes
- id: in_tax_on_names
  doc: taxonomy names.dmp from NCBI
  type: boolean
  inputBinding:
    prefix: --taxonnames
- id: in_query
  doc: (-q)             input query file
  type: boolean
  inputBinding:
    prefix: --query
- id: in_strand
  doc: query strands to search (both/minus/plus)
  type: boolean
  inputBinding:
    prefix: --strand
- id: in_un
  doc: file for unaligned queries
  type: boolean
  inputBinding:
    prefix: --un
- id: in_al
  doc: file or aligned queries
  type: boolean
  inputBinding:
    prefix: --al
- id: in_un_fmt
  doc: format of unaligned query file (fasta/fastq)
  type: boolean
  inputBinding:
    prefix: --unfmt
- id: in_al_fmt
  doc: format of aligned query file (fasta/fastq)
  type: boolean
  inputBinding:
    prefix: --alfmt
- id: in_unal
  doc: report unaligned queries (0=no, 1=yes)
  type: boolean
  inputBinding:
    prefix: --unal
- id: in_max_target_seqs
  doc: (-k)   maximum number of target sequences to report alignments for (default=25)
  type: boolean
  inputBinding:
    prefix: --max-target-seqs
- id: in_top
  doc: report alignments within this percentage range of top alignment score (overrides
    --max-target-seqs)
  type: boolean
  inputBinding:
    prefix: --top
- id: in_max_hsps
  doc: maximum number of HSPs per subject sequence to report for each query (default=unlimited)
  type: boolean
  inputBinding:
    prefix: --max-hsps
- id: in_range_culling
  doc: restrict hit culling to overlapping query ranges
  type: boolean
  inputBinding:
    prefix: --range-culling
- id: in_compress
  doc: compression for output files (0=none, 1=gzip)
  type: boolean
  inputBinding:
    prefix: --compress
- id: in_evalue
  doc: (-e)            maximum e-value to report alignments (default=0.001)
  type: boolean
  inputBinding:
    prefix: --evalue
- id: in_min_score
  doc: minimum bit score to report alignments (overrides e-value setting)
  type: boolean
  inputBinding:
    prefix: --min-score
- id: in_id
  doc: minimum identity% to report an alignment
  type: boolean
  inputBinding:
    prefix: --id
- id: in_query_cover
  doc: minimum query cover% to report an alignment
  type: boolean
  inputBinding:
    prefix: --query-cover
- id: in_subject_cover
  doc: minimum subject cover% to report an alignment
  type: boolean
  inputBinding:
    prefix: --subject-cover
- id: in_sensitive
  doc: 'enable sensitive mode (default: fast)'
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: in_more_sensitive
  doc: 'enable more sensitive mode (default: fast)'
  type: boolean
  inputBinding:
    prefix: --more-sensitive
- id: in_block_size
  doc: (-b)        sequence block size in billions of letters (default=2.0)
  type: boolean
  inputBinding:
    prefix: --block-size
- id: in_index_chunks
  doc: (-c)      number of chunks for index processing (default=4)
  type: boolean
  inputBinding:
    prefix: --index-chunks
- id: in_tmpdir
  doc: (-t)            directory for temporary files
  type: boolean
  inputBinding:
    prefix: --tmpdir
- id: in_gap_open
  doc: gap open penalty
  type: boolean
  inputBinding:
    prefix: --gapopen
- id: in_gap_extend
  doc: gap extension penalty
  type: boolean
  inputBinding:
    prefix: --gapextend
- id: in_frameshift
  doc: (-F)        frame shift penalty (default=disabled)
  type: boolean
  inputBinding:
    prefix: --frameshift
- id: in_long_reads
  doc: short for --range-culling --top 10 -F 15
  type: boolean
  inputBinding:
    prefix: --long-reads
- id: in_matrix
  doc: score matrix for protein alignment (default=BLOSUM62)
  type: boolean
  inputBinding:
    prefix: --matrix
- id: in_custom_matrix
  doc: file containing custom scoring matrix
  type: boolean
  inputBinding:
    prefix: --custom-matrix
- id: in_lambda
  doc: lambda parameter for custom matrix
  type: boolean
  inputBinding:
    prefix: --lambda
- id: in_k_parameter_custom
  doc: K parameter for custom matrix
  type: boolean
  inputBinding:
    prefix: --K
- id: in_comp_based_stats
  doc: enable composition based statistics (0/1=default)
  type: boolean
  inputBinding:
    prefix: --comp-based-stats
- id: in_masking
  doc: enable masking of low complexity regions (0/1=default)
  type: boolean
  inputBinding:
    prefix: --masking
- id: in_query_gen_code
  doc: genetic code to use to translate query (see user manual)
  type: boolean
  inputBinding:
    prefix: --query-gencode
- id: in_s_all_titles
  doc: include full subject titles in DAA file
  type: boolean
  inputBinding:
    prefix: --salltitles
- id: in_s_all_seq_id
  doc: include all subject ids in DAA file
  type: boolean
  inputBinding:
    prefix: --sallseqid
- id: in_no_self_hits
  doc: suppress reporting of identical self hits
  type: boolean
  inputBinding:
    prefix: --no-self-hits
- id: in_taxon_list
  doc: restrict search to list of taxon ids (comma-separated)
  type: boolean
  inputBinding:
    prefix: --taxonlist
- id: in_tax_on_exclude
  doc: exclude list of taxon ids (comma-separated)
  type: boolean
  inputBinding:
    prefix: --taxon-exclude
- id: in_algo
  doc: Seed search algorithm (0=double-indexed/1=query-indexed)
  type: boolean
  inputBinding:
    prefix: --algo
- id: in_bin
  doc: number of query bins for seed search
  type: boolean
  inputBinding:
    prefix: --bin
- id: in_min_orf
  doc: (-l)           ignore translated sequences without an open reading frame of
    at least this length
  type: boolean
  inputBinding:
    prefix: --min-orf
- id: in_freq_sd
  doc: number of standard deviations for ignoring frequent seeds
  type: boolean
  inputBinding:
    prefix: --freq-sd
- id: in_id_two
  doc: minimum number of identities for stage 1 hit
  type: boolean
  inputBinding:
    prefix: --id2
- id: in_x_drop
  doc: (-x)             xdrop for ungapped alignment
  type: boolean
  inputBinding:
    prefix: --xdrop
- id: in_band
  doc: band for dynamic programming computation
  type: boolean
  inputBinding:
    prefix: --band
- id: in_shapes
  doc: (-s)            number of seed shapes (0 = all available)
  type: boolean
  inputBinding:
    prefix: --shapes
- id: in_shape_mask
  doc: seed shapes
  type: boolean
  inputBinding:
    prefix: --shape-mask
- id: in_rank_ratio
  doc: include subjects within this ratio of last hit
  type: boolean
  inputBinding:
    prefix: --rank-ratio
- id: in_culling_overlap
  doc: minimum range overlap with higher scoring hit to delete a hit (default=50%)
  type: boolean
  inputBinding:
    prefix: --culling-overlap
- id: in_tax_on_k
  doc: maximum number of targets to report per species
  type: boolean
  inputBinding:
    prefix: --taxon-k
- id: in_range_cover
  doc: percentage of query range to be covered for range culling (default=50%)
  type: boolean
  inputBinding:
    prefix: --range-cover
- id: in_db_size
  doc: effective database size (in letters)
  type: boolean
  inputBinding:
    prefix: --dbsize
- id: in_no_auto_append
  doc: disable auto appending of DAA and DMND file extensions
  type: boolean
  inputBinding:
    prefix: --no-auto-append
- id: in_xml_b_lord_format
  doc: Use gnl|BL_ORD_ID| style format in XML output
  type: boolean
  inputBinding:
    prefix: --xml-blord-format
- id: in_stop_match_score
  doc: Set the match score of stop codons against each other.
  type: boolean
  inputBinding:
    prefix: --stop-match-score
- id: in_tant_an_min_mask_prob
  doc: minimum repeat probability for masking (default=0.9)
  type: boolean
  inputBinding:
    prefix: --tantan-minMaskProb
- id: in_file_buffer_size
  doc: file buffer size in bytes (default=67108864)
  type: boolean
  inputBinding:
    prefix: --file-buffer-size
- id: in_da_a
  doc: (-a)               DIAMOND alignment archive (DAA) file
  type: boolean
  inputBinding:
    prefix: --daa
- id: in_forward_only
  doc: only show alignments of forward strand
  type: boolean
  inputBinding:
    prefix: --forwardonly
- id: in_seq
  doc: Sequence numbers to display.
  type: boolean
  inputBinding:
    prefix: --seq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: (-o)               output file
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- diamond
