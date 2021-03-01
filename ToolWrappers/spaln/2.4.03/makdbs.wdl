version 1.0

task Makdbs {
  input {
    Boolean? ignore_abmiguity_code
    Boolean? bc
    Boolean? _include_commentsdescriptions
    Boolean? d_name
    Boolean? s_srcdir
    Boolean? directory_where_destination_files_are
    Boolean? dna_protein_sequence
    Boolean? var_7
    Boolean? d
    String? name
  }
  command <<<
    makdbs \
      ~{name} \
      ~{if (ignore_abmiguity_code) then "-a" else ""} \
      ~{if (bc) then "-bC" else ""} \
      ~{if (_include_commentsdescriptions) then "-c" else ""} \
      ~{if (d_name) then "-dName" else ""} \
      ~{if (s_srcdir) then "-sSrcdir" else ""} \
      ~{if (directory_where_destination_files_are) then "-pdstdir" else ""} \
      ~{if (dna_protein_sequence) then "-K" else ""} \
      ~{if (var_7) then "-pDstdir" else ""} \
      ~{if (d) then "-d" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ignore_abmiguity_code: ": Ignore abmiguity code"
    bc: ": C = [e]mbl|[g]enbank|[n]brf|[p]rodb|[s]wiss"
    _include_commentsdescriptions: ": include comments/descriptions"
    d_name: ": Body of file names to be created\\nIf omitted, default name depending on DB type\\nIf Name is omitted, taken from 1st source file name"
    s_srcdir: ": Directory where source files are located\\nIf omitted, srcdir <= {., (null), /usr/local/share/spaln/alndbs}"
    directory_where_destination_files_are: ": Directory where destination files are located\\nIf omitted, dstdir = current dir\\n*.ent, *.grp, *idx, (*.odr), and *.seq files are made in this directory"
    dna_protein_sequence: "[D|P] : DNA or Protein sequence"
    var_7: ""
    d: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}