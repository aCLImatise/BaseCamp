class: CommandLineTool
id: goalign_phasent.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: aa_output
  doc: Output translated sequences FASTA file (default "none")
  type: string
  inputBinding:
    prefix: --aa-output
- id: cut_end
  doc: If true, then also remove the end of sequences that do not align with orf
  type: boolean
  inputBinding:
    prefix: --cut-end
- id: gap_extend
  doc: Score for extending a gap  (default -0.5)
  type: double
  inputBinding:
    prefix: --gap-extend
- id: gap_open
  doc: Score for opening a gap  (default -12)
  type: double
  inputBinding:
    prefix: --gap-open
- id: genetic_code
  doc: 'Genetic Code: standard, mitoi (invertebrate mitochondrial) or mitov (vertebrate
    mitochondrial) (default "standard")'
  type: string
  inputBinding:
    prefix: --genetic-code
- id: len_cut_off
  doc: Length cutoff, over orf length, to consider sequence hits (-1==No cutoff) (default
    -1)
  type: double
  inputBinding:
    prefix: --len-cutoff
- id: log
  doc: 'Output log: positions of the considered ATG for each sequence (default "none")'
  type: string
  inputBinding:
    prefix: --log
- id: match
  doc: Score for a match for pairwise alignment (if omitted, then take substitution
    matrix) (default 1)
  type: double
  inputBinding:
    prefix: --match
- id: match_cut_off
  doc: Nb Matches cutoff, over alignment length, to consider sequence hits (-1==No
    cutoff) (default 0.5)
  type: double
  inputBinding:
    prefix: --match-cutoff
- id: mismatch
  doc: Score for a mismatch for pairwise alignment (if omitted, then take substitution
    matrix) (default -1)
  type: double
  inputBinding:
    prefix: --mismatch
- id: nt_output
  doc: Output ATG "phased" FASTA file + first nts not in ref phase removed (nt corresponding
    to aa-output sequence) (default "none")
  type: string
  inputBinding:
    prefix: --nt-output
- id: output
  doc: Output ATG "phased" FASTA file (default "stdout")
  type: string
  inputBinding:
    prefix: --output
- id: ref_orf
  doc: Reference ORF to phase against (if none is given, then will try to get the
    longest orf in the input data) (default "none")
  type: string
  inputBinding:
    prefix: --ref-orf
- id: reverse
  doc: Search ALSO in the reverse strand (in addition to the forward strand)
  type: boolean
  inputBinding:
    prefix: --reverse
- id: unaligned
  doc: Considers sequences as unaligned and only format fasta is accepted (phylip,
    nexus,... options are ignored)
  type: boolean
  inputBinding:
    prefix: --unaligned
- id: align
  doc: Alignment input file (default "stdin")
  type: string
  inputBinding:
    prefix: --align
- id: auto_detect
  doc: Auto detects input format (overrides -p, -x and -u)
  type: boolean
  inputBinding:
    prefix: --auto-detect
- id: clustal
  doc: Alignment is in clustal? default fasta
  type: boolean
  inputBinding:
    prefix: --clustal
- id: ignore_identical
  doc: Ignore duplicated sequences that have the same name and same sequences
  type: boolean
  inputBinding:
    prefix: --ignore-identical
- id: input_strict
  doc: Strict phylip input format (only used with -p)
  type: boolean
  inputBinding:
    prefix: --input-strict
- id: nexus
  doc: Alignment is in nexus? default fasta
  type: boolean
  inputBinding:
    prefix: --nexus
- id: no_block
  doc: Write Phylip sequences without space separated blocks (only used with -p)
  type: boolean
  inputBinding:
    prefix: --no-block
- id: one_line
  doc: Write Phylip sequences on 1 line (only used with -p)
  type: boolean
  inputBinding:
    prefix: --one-line
- id: output_strict
  doc: Strict phylip output format (only used with -p)
  type: boolean
  inputBinding:
    prefix: --output-strict
- id: phylip
  doc: Alignment is in phylip? default fasta
  type: boolean
  inputBinding:
    prefix: --phylip
- id: seed
  doc: 'Random Seed: -1 = nano seconds since 1970/01/01 00:00:00 (default -1)'
  type: long
  inputBinding:
    prefix: --seed
- id: threads
  doc: Number of threads (default 1)
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- goalign
- phasent
