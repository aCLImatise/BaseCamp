version 1.0

task FilterUniqueBasepairspl {
  input {
    Boolean? tsv
    Boolean? tree
    Boolean? valid
    Boolean? file_matching_positions
    Boolean? vcf
    Boolean? directory
    Boolean? strains
    File? clade
    Boolean? quiet
    String var_9
  }
  command <<<
    filter_unique_basepairs_pl \
      ~{var_9} \
      ~{if (tsv) then "--tsv" else ""} \
      ~{if (tree) then "--tree" else ""} \
      ~{if (valid) then "--valid" else ""} \
      ~{if (file_matching_positions) then "--output" else ""} \
      ~{if (vcf) then "--vcf" else ""} \
      ~{if (directory) then "--directory" else ""} \
      ~{if (strains) then "--strains" else ""} \
      ~{if (clade) then "--clade" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    var_9: ""
  }
  output {
    File out_stdout = stdout()
    File out_clade = "${in_clade}"
  }
}