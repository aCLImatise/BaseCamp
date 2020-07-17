version 1.0

task GdtoolsVCF2GD {
  input {
    String? name_output_genome
  }
  command <<<
    gdtools VCF2GD \
      ~{if defined(name_output_genome) then ("--output " +  '"' + name_output_genome + '"') else ""}
  >>>
  parameter_meta {
    name_output_genome: "name of output Genome Diff file (DEFAULT=output.gd)"
  }
}