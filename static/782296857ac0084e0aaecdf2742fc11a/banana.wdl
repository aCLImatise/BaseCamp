version 1.0

task Banana {
  input {
    Boolean? graph
    Boolean? angles_file
    Boolean? residues_per_line
    File? outfile
  }
  command <<<
    banana \
      ~{if (graph) then "-graph" else ""} \
      ~{if (angles_file) then "-anglesfile" else ""} \
      ~{if (residues_per_line) then "-residuesperline" else ""} \
      ~{if (outfile) then "-outfile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    graph: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\\n(ps, hpgl, hp7470, hp7580, meta, cps, tek,\\ntekt, none, data, png, gif, svg)"
    angles_file: "datafile   [Eangles_tri.dat] DNA base trimer roll\\nangles data file"
    residues_per_line: "integer    [50] Number of residues to be displayed on\\neach line (Any integer value)"
    outfile: "outfile    [banana.profile] Output file name"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}