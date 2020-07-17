version 1.0

task BioformatsBedautosql {
  input {
    String? name
    String? description
    String? lines
    Boolean? v
    String bed_file
    String output_file
  }
  command <<<
    bioformats bedautosql \
      ~{bed_file} \
      ~{output_file} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(lines) then ("--lines " +  '"' + lines + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    name: "a table name (default: Table)"
    description: "a table description (default: Description)"
    lines: "the number of lines to analyzefrom the input file (default: 100)"
    v: ""
    bed_file: "a BED file"
    output_file: "an output file"
  }
}