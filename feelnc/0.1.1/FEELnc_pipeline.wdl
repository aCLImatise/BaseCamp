version 1.0

task FEELncPipeline.sh {
  input {
    String? candidate
    String? reference
    String? genome
    String? out_name
    String? outdir
  }
  command <<<
    FEELnc_pipeline.sh \
      ~{if defined(candidate) then ("--candidate " +  '"' + candidate + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    candidate: ""
    reference: ""
    genome: ""
    out_name: ""
    outdir: ""
  }
}