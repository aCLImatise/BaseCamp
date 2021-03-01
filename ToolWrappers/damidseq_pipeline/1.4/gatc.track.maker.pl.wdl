version 1.0

task Gatctrackmakerpl {
  input {
    Boolean? mi_to
    File? name
    Boolean? scaffolds
  }
  command <<<
    gatc_track_maker_pl \
      ~{if (mi_to) then "--mito" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if (scaffolds) then "--scaffolds" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mi_to: "Process mitochondrial chromosome (not recommended)"
    name: "Name of organism (for output file)"
    scaffolds: "Process scaffold assemblies (not recommended)"
  }
  output {
    File out_stdout = stdout()
    File out_name = "${in_name}"
  }
}