class: CommandLineTool
id: pp_simScore.cwl
inputs:
- id: in_gap_inter
  doc: ":                gap costs for an alignment column that is a gap in an inter-block\
    \ section\ndefault setting: -5"
  type: boolean?
  inputBinding:
    prefix: --gap_inter
- id: in_gap_intra
  doc: ":                gap costs for an alignment column that is a gap in a block\n\
    default setting: -50"
  type: boolean?
  inputBinding:
    prefix: --gap_intra
- id: in_gap_intron
  doc: ":               gap costs for a gap in intron positions\ndefault setting:\
    \ -5"
  type: boolean?
  inputBinding:
    prefix: --gap_intron
- id: in_epsilon_intron
  doc: ":           pseudocount parameter epsilon1, the pseudocount is added to a\
    \ relative intron frequency v/w with (v+epsilon1)/(w+epsilon1+epsilon2)\ndefault\
    \ setting: 0.0000001"
  type: boolean?
  inputBinding:
    prefix: --epsilon_intron
- id: in_epsilon_no_intron
  doc: ":         pseudocount parameter epsilon2, the pseudocount is added to a relative\
    \ intron frequency v/w with (v+epsilon1)/(w+epsilon1+epsilon2)\ndefault setting:\
    \ 0.1"
  type: boolean?
  inputBinding:
    prefix: --epsilon_noIntron
- id: in_intron_weight_intra
  doc: ":      value that is added to an intron score for a match of intron positions\
    \ in a block\ndefault setting: 5"
  type: boolean?
  inputBinding:
    prefix: --intron_weight_intra
- id: in_intron_weight_inter
  doc: ":      value that is added to an intron score for a match of intron positions\
    \ in an inter-block\ndefault setting: 5"
  type: boolean?
  inputBinding:
    prefix: --intron_weight_inter
- id: in_alignment
  doc: ":                number of optimal alignments that are computed\ndefault setting:\
    \ 1"
  type: boolean?
  inputBinding:
    prefix: --alignment
- id: in_out
  doc: ":                      denotes the output format, the following output options,\
    \ between \" \", are implemented:\n\"score\" : output is the similarity score\n\
    \"matrix\" : output are similarity matrix and similarity score\n\"alignment\"\
    \ : output are the computed alignments to the console as\nAlignment representation\
    \ of P as symbols of {AminoAcid, gap symbol or number of amino acids in inter-block}\n\
    Alignment representation of argmax of B as symbols of {argmax AminoAcid for aligned\
    \ block column, gap symbol or inter-block length}\nFrequency of amino acid of\
    \ P in aligned block column of B, if alignment type is a match\n\"matrix+alignment\"\
    : output are similarity matrix,\nsimilarity score and the computed\nalignments\
    \ in the format described above\n\"db\" : output are the computed alignment\n\
    as list of alignment frames,\nan element of the list consists of:\n- starting\
    \ position of the first amino acid of the protein sequence that is included in\
    \ the alignment frame\n- block number in which the alignment frame is located\n\
    - index of the first block column that is included in the alignment frame\n- length\
    \ of the frame (number of alignment columns)\n- alignment type: 'm', 's'. 'p'\
    \ or '-'\n\"bp\" : output is a list of translations from the index of a block\n\
    to the number of the block in the .prfl file\n\"consents\" : output is the average\
    \ of the argmax\nof the block columns for the complete profile\n\"interblock\"\
    \ : output is a list of all inter-block distance intervals\ndefault setting: \"\
    score\""
  type: boolean?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- pp_simScore
