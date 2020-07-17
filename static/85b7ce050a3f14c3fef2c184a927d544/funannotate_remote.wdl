version 1.0

task FunannotateRemote {
  input {
    Boolean? genbank
    Boolean? out
    Boolean? force
  }
  command <<<
    funannotate remote \
      ~{true="--genbank" false="" genbank} \
      ~{true="--out" false="" out} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    genbank: "GenBank file (must be annotated)."
    out: "Output folder name. "
    force: "Force query even if antiSMASH server looks busy"
  }
}