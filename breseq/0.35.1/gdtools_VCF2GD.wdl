version 1.0

task GdtoolsVCF2GD {
  input {
    File? name_output_genome
  }
  command <<<
    gdtools VCF2GD \
      ~{if defined(name_output_genome) then ("--output " +  '"' + name_output_genome + '"') else ""}
  >>>
  parameter_meta {
    name_output_genome: "name of output Genome Diff file (DEFAULT=output.gd)"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_genome = "${in_name_output_genome}"
  }
}