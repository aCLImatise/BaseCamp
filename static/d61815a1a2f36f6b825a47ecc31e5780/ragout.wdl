version 1.0

task Ragout {
  input {
    Directory? outdir
    String? synteny
    Boolean? refine
    Boolean? solid_scaffolds
    Boolean? overwrite
    Boolean? repeats
    Boolean? debug
    Int? threads
  }
  command <<<
    ragout \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(synteny) then ("--synteny " +  '"' + synteny + '"') else ""} \
      ~{if (refine) then "--refine" else ""} \
      ~{if (solid_scaffolds) then "--solid-scaffolds" else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if (repeats) then "--repeats" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    outdir: "output directory (default: ragout-out)"
    synteny: "backend for synteny block decomposition (default:\\nsibelia)"
    refine: "enable refinement with assembly graph (default: False)"
    solid_scaffolds: "do not break input sequences - disables chimera\\ndetection module (default: False)"
    overwrite: "overwrite results from the previous run (default:\\nFalse)"
    repeats: "enable repeat resolution algorithm (default: False)"
    debug: "enable debug output (default: False)"
    threads: "number of threads for synteny backend (default: 1)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}