version 1.0

task HpDemo {
  input {
    String? outdir
    Boolean? ref_only
  }
  command <<<
    hp_demo \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--refonly" false="" ref_only}
  >>>
  parameter_meta {
    outdir: "Output directory (default: .)"
    ref_only: "Does not run entire demo, only pulls the reference files (default: False)"
  }
}