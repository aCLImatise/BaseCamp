version 1.0

task PpSimScore {
  input {
    Boolean? gap_inter
    Boolean? gap_intra
    Boolean? gap_intron
    Boolean? epsilon_intron
    Boolean? epsilon_no_intron
    Boolean? intron_weight_intra
    Boolean? intron_weight_inter
    Boolean? alignment
    Boolean? out
  }
  command <<<
    pp_simScore \
      ~{if (gap_inter) then "--gap_inter" else ""} \
      ~{if (gap_intra) then "--gap_intra" else ""} \
      ~{if (gap_intron) then "--gap_intron" else ""} \
      ~{if (epsilon_intron) then "--epsilon_intron" else ""} \
      ~{if (epsilon_no_intron) then "--epsilon_noIntron" else ""} \
      ~{if (intron_weight_intra) then "--intron_weight_intra" else ""} \
      ~{if (intron_weight_inter) then "--intron_weight_inter" else ""} \
      ~{if (alignment) then "--alignment" else ""} \
      ~{if (out) then "--out" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  parameter_meta {
    gap_inter: ":                gap costs for an alignment column that is a gap in an inter-block section\\ndefault setting: -5"
    gap_intra: ":                gap costs for an alignment column that is a gap in a block\\ndefault setting: -50"
    gap_intron: ":               gap costs for a gap in intron positions\\ndefault setting: -5"
    epsilon_intron: ":           pseudocount parameter epsilon1, the pseudocount is added to a relative intron frequency v/w with (v+epsilon1)/(w+epsilon1+epsilon2)\\ndefault setting: 0.0000001"
    epsilon_no_intron: ":         pseudocount parameter epsilon2, the pseudocount is added to a relative intron frequency v/w with (v+epsilon1)/(w+epsilon1+epsilon2)\\ndefault setting: 0.1"
    intron_weight_intra: ":      value that is added to an intron score for a match of intron positions in a block\\ndefault setting: 5"
    intron_weight_inter: ":      value that is added to an intron score for a match of intron positions in an inter-block\\ndefault setting: 5"
    alignment: ":                number of optimal alignments that are computed\\ndefault setting: 1"
    out: ":                      denotes the output format, the following output options, between \\\" \\\", are implemented:\\n\\\"score\\\" : output is the similarity score\\n\\\"matrix\\\" : output are similarity matrix and similarity score\\n\\\"alignment\\\" : output are the computed alignments to the console as\\nAlignment representation of P as symbols of {AminoAcid, gap symbol or number of amino acids in inter-block}\\nAlignment representation of argmax of B as symbols of {argmax AminoAcid for aligned block column, gap symbol or inter-block length}\\nFrequency of amino acid of P in aligned block column of B, if alignment type is a match\\n\\\"matrix+alignment\\\": output are similarity matrix,\\nsimilarity score and the computed\\nalignments in the format described above\\n\\\"db\\\" : output are the computed alignment\\nas list of alignment frames,\\nan element of the list consists of:\\n- starting position of the first amino acid of the protein sequence that is included in the alignment frame\\n- block number in which the alignment frame is located\\n- index of the first block column that is included in the alignment frame\\n- length of the frame (number of alignment columns)\\n- alignment type: 'm', 's'. 'p' or '-'\\n\\\"bp\\\" : output is a list of translations from the index of a block\\nto the number of the block in the .prfl file\\n\\\"consents\\\" : output is the average of the argmax\\nof the block columns for the complete profile\\n\\\"interblock\\\" : output is a list of all inter-block distance intervals\\ndefault setting: \\\"score\\\""
  }
  output {
    File out_stdout = stdout()
  }
}