version 1.0

task FEELncPipelinesh {
  input {
    Directory? outdir
    String? out_name
    String? genome
    String? reference
    String? candidate
  }
  command <<<
    FEELnc_pipeline_sh \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(candidate) then ("--candidate " +  '"' + candidate + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: ""
    out_name: ""
    genome: ""
    reference: ""
    candidate: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}