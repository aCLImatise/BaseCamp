version 1.0

task FunannotateRemote {
  input {
    Boolean? methods
    Boolean? email
    Boolean? funannotate_input_folder
    Directory? out
    Boolean? force
    String or
  }
  command <<<
    funannotate remote \
      ~{or} \
      ~{if (methods) then "--methods" else ""} \
      ~{if (email) then "--email" else ""} \
      ~{if (funannotate_input_folder) then "--input" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/funannotate:1.8.5--pyh3252c3a_0"
  }
  parameter_meta {
    methods: "Which services to run, space separated [phobius,antismash,all]"
    email: "Email address to identify yourself to services."
    funannotate_input_folder: "Funannotate input folder."
    out: "Output folder name."
    force: "Force query even if antiSMASH server looks busy"
    or: "-g, --genbank       GenBank file (must be annotated)."
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}