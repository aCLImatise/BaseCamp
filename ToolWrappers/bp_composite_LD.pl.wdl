version 1.0

task BpCompositeLDpl {
  input {
    String? format
    Int? sort_by_ld
    File? out
    Boolean? no_convert
    String description
    String options
  }
  command <<<
    bp_composite_LD_pl \
      ~{description} \
      ~{options} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(sort_by_ld) then ("--sortbyld " +  '"' + sort_by_ld + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (no_convert) then "--noconvert" else ""}
  >>>
  parameter_meta {
    format: "format (prettybase or CSV)"
    sort_by_ld: "see data sorted by LD instead of just all the site1/site2"
    out: "filename, otherwise will print to STDOUT"
    no_convert: "(applicable for prettybase format file only) if specified"
    description: "This a script which allows an easy way to calculate composite LD."
    options: "-i or --in filename"
  }
  output {
    File out_stdout = stdout()
  }
}