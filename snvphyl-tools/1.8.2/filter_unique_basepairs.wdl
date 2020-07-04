version 1.0

task FilterUniqueBasepairs.pl {
  input {
    Boolean? tsv
    Boolean? tree
    Boolean? valid
    Boolean? file_matching_positions
    Boolean? vcf
    Boolean? directory
    Boolean? strains
    Boolean? clade
    Boolean? quiet
  }
  command <<<
    filter_unique_basepairs.pl \
      ~{true="--tsv" false="" tsv} \
      ~{true="--tree" false="" tree} \
      ~{true="--valid" false="" valid} \
      ~{true="--output" false="" file_matching_positions} \
      ~{true="--vcf" false="" vcf} \
      ~{true="--directory" false="" directory} \
      ~{true="--strains" false="" strains} \
      ~{true="--clade" false="" clade} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    tsv: "The tsv file containing the snv_alignment"
    tree: "The .tre file that contains the data for making the tree"
    valid: "Include all matches, including non-valid entries"
    file_matching_positions: "The file the matching positions will be written to"
    vcf: "A VCF input file in the following format: strain_name=file_path"
    directory: "A folder containing all of the tabular snveff outputs"
    strains: "The strains you wish to find unique basepairs in"
    clade: "The output name for the clades tree file produced"
    quiet: "Suppress all warnings"
  }
}