version 1.0

task Ragout {
  input {
    String? outdir
    String? synteny
    Boolean? refine
    Boolean? solid_scaffolds
    Boolean? overwrite
    Boolean? repeats
    Boolean? debug
    String? threads
    String recipe_file
  }
  command <<<
    ragout \
      ~{recipe_file} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(synteny) then ("--synteny " +  '"' + synteny + '"') else ""} \
      ~{true="--refine" false="" refine} \
      ~{true="--solid-scaffolds" false="" solid_scaffolds} \
      ~{true="--overwrite" false="" overwrite} \
      ~{true="--repeats" false="" repeats} \
      ~{true="--debug" false="" debug} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    outdir: "output directory (default: ragout-out)"
    synteny: "backend for synteny block decomposition (default: sibelia)"
    refine: "enable refinement with assembly graph (default: False)"
    solid_scaffolds: "do not break input sequences - disables chimera detection module (default: False)"
    overwrite: "overwrite results from the previous run (default: False)"
    repeats: "enable repeat resolution algorithm (default: False)"
    debug: "enable debug output (default: False)"
    threads: "number of threads for synteny backend (default: 1)"
    recipe_file: "path to recipe file"
  }
}