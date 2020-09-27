version 1.0

task Lc {
  input {
    Boolean? verbose
    String? target
    File? comp_list
    String? load
    File? outdir
    Boolean? nologo
  }
  command <<<
    lc \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(comp_list) then ("--complist " +  '"' + comp_list + '"') else ""} \
      ~{if defined(load) then ("--load " +  '"' + load + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (nologo) then "--nologo" else ""}
  >>>
  parameter_meta {
    verbose: "Verbose output"
    target: "Target assembly name"
    comp_list: "licx file to compile"
    load: "Reference to load"
    outdir: "Output directory for the .licenses file"
    nologo: "Do not display logo"
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}