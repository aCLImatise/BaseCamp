version 1.0

task Rrbsreference {
  input {
    String ref_dot_nix
    String maxlength
    String ccgg_dot_tsv
  }
  command <<<
    rrbsreference \
      ~{ref_dot_nix} \
      ~{maxlength} \
      ~{ccgg_dot_tsv}
  >>>
  parameter_meta {
    ref_dot_nix: "is an unmasked indexed reference genome from novoindex"
    maxlength: "is maximum expected read length and sets maximum distance between unmasked CCGG sites."
    ccgg_dot_tsv: "is a list of CCGG sites in the reference. This list can be generated with the command\\nnovoutil tag ref.nix CCGG | sort -k 1,1 -k2,2n >CCGG.tsv\\nref.nix is a normal (NOT a bisulphite index) novoindex of the reference fasta file."
  }
  output {
    File out_stdout = stdout()
  }
}