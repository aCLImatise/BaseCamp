version 1.0

task BioformatsBedautosql {
  input {
    String? name
    String? description
    Int? lines
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
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: "a table name (default: Table)"
    description: "a table description (default: Description)"
    lines: "the number of lines to analyzefrom the input file\\n(default: 100)\\n"
    v: ""
    bed_file: "a BED file"
    output_file: "an output file"
  }
  output {
    File out_stdout = stdout()
  }
}