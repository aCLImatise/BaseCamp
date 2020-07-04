version 1.0

task AgatSpManageIntrons.pl {
  input {
    Boolean? plot
    String? output_gff_file
    String? gff
  }
  command <<<
    agat_sp_manage_introns.pl \
      ~{true="--plot" false="" plot} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""}
  >>>
  parameter_meta {
    plot: "Allows to create an histogram in pdf of intron sizes distribution."
    output_gff_file: "Output gff3 file where the gene incriminated will be write."
    gff: ""
  }
}