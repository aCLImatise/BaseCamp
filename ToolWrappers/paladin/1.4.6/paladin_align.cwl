class: CommandLineTool
id: paladin_align.cwl
inputs:
- id: in_disable_orf_detection
  doc: disable ORF detection and treat input as protein sequence
  type: boolean
  inputBinding:
    prefix: -p
- id: in_disable_brute_force
  doc: disable brute force ORF detection
  type: boolean
  inputBinding:
    prefix: -b
- id: in_adjust_minimum_value
  doc: do not adjust minimum ORF length (constant value) for shorter read lengths
  type: boolean
  inputBinding:
    prefix: -J
- id: in_minimum_orf_length_accepted_constant
  doc: minimum ORF length accepted (as constant value) [250]
  type: long
  inputBinding:
    prefix: -f
- id: in_minimum_orf_length_accepted_percentage
  doc: minimum ORF length accepted (as percentage of read length) [0.00]
  type: double
  inputBinding:
    prefix: -F
- id: in_z
  doc: '[,...]  Genetic code used for translation (-z ? for full list) [1]'
  type: long
  inputBinding:
    prefix: -z
- id: in_number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: in_minimum_seed_length
  doc: minimum seed length [11]
  type: long
  inputBinding:
    prefix: -k
- id: in_offdiagonal_xdropoff
  doc: off-diagonal X-dropoff [100]
  type: long
  inputBinding:
    prefix: -d
- id: in_look_internal_longer
  doc: look for internal seeds inside a seed longer than {-k} * FLOAT [1.5]
  type: double
  inputBinding:
    prefix: -r
- id: in_seed_occurrence_rd
  doc: seed occurrence for the 3rd round seeding [20]
  type: long
  inputBinding:
    prefix: -y
- id: in_skip_seeds_more
  doc: skip seeds with more than INT occurrences [500]
  type: long
  inputBinding:
    prefix: -c
- id: in_drop_chains_shorter
  doc: drop chains shorter than FLOAT fraction of the longest overlapping chain [0.50]
  type: double
  inputBinding:
    prefix: -D
- id: in_discard_chain_shorter
  doc: discard a chain if seeded bases shorter than INT [0]
  type: long
  inputBinding:
    prefix: -W
- id: in_perform_most_int
  doc: perform at most INT rounds of mate rescues for each read [50]
  type: long
  inputBinding:
    prefix: -m
- id: in_discard_fulllength_exact
  doc: discard full-length exact matches
  type: boolean
  inputBinding:
    prefix: -e
- id: in_score_sequence_match
  doc: score for a sequence match, which scales options -TdBOELU unless overridden
    [1]
  type: long
  inputBinding:
    prefix: -A
- id: in_penalty_for_mismatch
  doc: penalty for a mismatch [3]
  type: long
  inputBinding:
    prefix: -B
- id: in_gap_open_penalties
  doc: gap open penalties for deletions and insertions [0,0]
  type:
  - long
  inputBinding:
    prefix: -O
- id: in_gap_extension_penalty
  doc: gap extension penalty; a gap of size k cost '{-O} + {-E}*k' [1,1]
  type:
  - long
  inputBinding:
    prefix: -E
- id: in_penalty_end_clipping
  doc: penalty for 5'- and 3'-end clipping [0,0]
  type:
  - long
  inputBinding:
    prefix: -L
- id: in_penalty_unpaired_read
  doc: penalty for an unpaired read pair [17]
  type: long
  inputBinding:
    prefix: -U
- id: in_read_type_x
  doc: "read type. Setting -x changes multiple parameters unless overriden [null]\n\
    pacbio: -k17 -W40 -r10 -A1 -B1 -O1 -E1 -L0  (PacBio reads to ref)\nont2d: -k14\
    \ -W20 -r10 -A1 -B1 -O1 -E1 -L0  (Oxford Nanopore 2D-reads to ref)\nintractg:\
    \ -B9 -O16 -L5  (intra-species contigs to ref)"
  type: long
  inputBinding:
    prefix: -x
- id: in_activate_paladin_reporting
  doc: "activate PALADIN reporting using STR as an output file prefix.  Files generated\
    \ as follows:\nSTR.sam - alignment data (will not be sent to stdout)\nSTR_uniprot.tsv\
    \ - Tab delimited UniProt report (normal alignment mode)\nSTR_uniprot_primary.tsv\
    \ - Tab delimited UniProt report, primary alignments (all alignments mode)\nSTR_uniprot_secondary.tsv\
    \ - Tab delimited UniProt report, secondary alignments (all alignments mode)"
  type: File
  inputBinding:
    prefix: -o
- id: in_report_type_generated
  doc: "report type generated when using reporting and a UniProt reference [1]\n0:\
    \ Simple ID summary report\n1: Detailed report (Contacts uniprot.org)"
  type: long
  inputBinding:
    prefix: -u
- id: in_http_socks_proxy
  doc: HTTP or SOCKS proxy address
  type: string
  inputBinding:
    prefix: -P
- id: in_generate_detected_fasta
  doc: generate detected ORF nucleotide sequence FASTA
  type: boolean
  inputBinding:
    prefix: -g
- id: in_keep_protein_sequence
  doc: keep protein sequence after alignment
  type: boolean
  inputBinding:
    prefix: -n
- id: in_read_group_line
  doc: read group header line such as '@RG\tID:foo\tSM:bar' [null]
  type: string
  inputBinding:
    prefix: -R
- id: in_insert_str_header
  doc: insert STR to header if it starts with @; or insert lines in FILE [null]
  type: File
  inputBinding:
    prefix: -H
- id: in_treat_alt_contigs
  doc: treat ALT contigs as part of the primary assembly (i.e. ignore <idxbase>.alt
    file)
  type: boolean
  inputBinding:
    prefix: -j
- id: in_verbose_level_error
  doc: 'verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]'
  type: long
  inputBinding:
    prefix: -v
- id: in_minimum_score_output
  doc: minimum score to output [15]
  type: long
  inputBinding:
    prefix: -T
- id: in_there_int_hits
  doc: if there are <INT hits with score >80% of the max score, output all in XA [5,200]
  type:
  - long
  inputBinding:
    prefix: -h
- id: in_output_alignments_se
  doc: output all alignments for SE or unpaired PE
  type: boolean
  inputBinding:
    prefix: -a
- id: in_append_fastafastq_comment
  doc: append FASTA/FASTQ comment to SAM output
  type: boolean
  inputBinding:
    prefix: -C
- id: in_output_reference_header
  doc: output the reference FASTA header in the XR tag
  type: boolean
  inputBinding:
    prefix: -V
- id: in_use_soft_clipping
  doc: use soft clipping for supplementary alignments
  type: boolean
  inputBinding:
    prefix: -Y
- id: in_mark_shorter_split
  doc: mark shorter split hits as secondary
  type: boolean
  inputBinding:
    prefix: -M
- id: in_specify_standard_deviation
  doc: "specify the mean, standard deviation (10% of the mean if absent), max\n(4\
    \ sigma from the mean if absent) and min of the insert size distribution.\nFR\
    \ orientation only. [inferred]"
  type:
  - double
  - long
  inputBinding:
    prefix: -I
- id: in_idx_base
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_activate_paladin_reporting
  doc: "activate PALADIN reporting using STR as an output file prefix.  Files generated\
    \ as follows:\nSTR.sam - alignment data (will not be sent to stdout)\nSTR_uniprot.tsv\
    \ - Tab delimited UniProt report (normal alignment mode)\nSTR_uniprot_primary.tsv\
    \ - Tab delimited UniProt report, primary alignments (all alignments mode)\nSTR_uniprot_secondary.tsv\
    \ - Tab delimited UniProt report, secondary alignments (all alignments mode)"
  type: File
  outputBinding:
    glob: $(inputs.in_activate_paladin_reporting)
cwlVersion: v1.1
baseCommand:
- paladin
- align
