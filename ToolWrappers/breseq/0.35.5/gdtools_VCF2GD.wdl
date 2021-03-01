version 1.0

task GdtoolsVCF2GD {
  input {
    File? name_output_defaultoutputgd
  }
  command <<<
    gdtools VCF2GD \
      ~{if defined(name_output_defaultoutputgd) then ("--output " +  '"' + name_output_defaultoutputgd + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/breseq:0.35.5--h8b12597_0"
  }
  parameter_meta {
    name_output_defaultoutputgd: "name of output Genome Diff file (DEFAULT=output.gd)"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_defaultoutputgd = "${in_name_output_defaultoutputgd}"
  }
}