class: CommandLineTool
id: rna2meme.cwl
inputs:
- id: in_output_rna_motifs
  doc: Output RNA motifs (default).
  type: boolean
  inputBinding:
    prefix: -rna
- id: in_output_dna_motifs
  doc: Output DNA motifs instead of RNA motifs.
  type: boolean
  inputBinding:
    prefix: -dna
- id: in_seed_start
  doc: "starting offset of seed in RNA sequence,\nset to 0 to treat entire sequence\
    \ as seed;\ndefault: 0"
  type: long
  inputBinding:
    prefix: -seed_start
- id: in_seed_end
  doc: "ending offset of seed in RNA sequence;\ndefault: 0"
  type: long
  inputBinding:
    prefix: -seed_end
- id: in_start
  doc: "starting offset in RNA sequence (inclusive);\nuse negative numbers to count\
    \ from end;\ndefault: 1"
  type: long
  inputBinding:
    prefix: -start
- id: in_ending_offset_rna
  doc: "ending offset in RNA sequence (inclusive);\nuse negative numbers to count\
    \ from end;\ndefault: -1"
  type: long
  inputBinding:
    prefix: -end
- id: in_count_assign_match
  doc: "count to assign to a match (complement)\nin the seed region\ndefault: 1"
  type: long
  inputBinding:
    prefix: -match
- id: in_wobble
  doc: "count to assign to a U for a G, or a G for a U\nin the seed region\ndefault:\
    \ 0.1"
  type: double
  inputBinding:
    prefix: -wobble
- id: in_miss
  doc: "count to assign to a non-match non-wobble\nin the seed region\ndefault: 0.01"
  type: double
  inputBinding:
    prefix: -miss
- id: in_other_count
  doc: "extra count added to match, wobble\nand misses in non-seed positions to reduce\n\
    their contribution to the score;\ndefault: 0.5"
  type: double
  inputBinding:
    prefix: -other_count
- id: in_bg
  doc: "file with background frequencies of letters;\ndefault: uniform background"
  type: File
  inputBinding:
    prefix: -bg
- id: in_pseudo
  doc: "add <total pseudocounts> times letter\nbackground to each frequency; default:\
    \ 0"
  type: long
  inputBinding:
    prefix: -pseudo
- id: in_output_logodds_pssm
  doc: "output the log-odds (PSSM) and frequency\n(PSPM) motifs; default: PSPM motif\
    \ only"
  type: boolean
  inputBinding:
    prefix: -logodds
- id: in_url
  doc: "website for the motif; The FASTA ID is\nsubstituted for MOTIF_NAME; The first\
    \ word\nafter the FASTA ID is substituted for\nMOTIF_AC; default: no url"
  type: string
  inputBinding:
    prefix: -url
- id: in_var_14
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_add
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_default
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ending
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_extra
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_var_21
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_set
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_starting
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_their
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_26
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_27
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_contribution
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_misses
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_negative
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_offset
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_total_pseudo_counts
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_zero
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_added
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_assign
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_background
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_var_40
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_motifs
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_numbers
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_times
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_frequencies
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_instead
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_letter
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_non_seed
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_seed
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_count
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_positions
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_score
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_treat
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_u
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_entire
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_letters
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_var_60
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_non_match
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_var_62
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_non_wobble
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_as
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_g
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rna2meme
