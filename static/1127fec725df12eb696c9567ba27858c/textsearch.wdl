version 1.0

task Textsearch {
  input {
    Boolean? case_sensitive
    Boolean? html
    Boolean? only
    Boolean? heading
    Boolean? usa
    Boolean? name
    Boolean? description
    String sequence
  }
  command <<<
    textsearch \
      ~{sequence} \
      ~{if (case_sensitive) then "-casesensitive" else ""} \
      ~{if (html) then "-html" else ""} \
      ~{if (only) then "-only" else ""} \
      ~{if (heading) then "-heading" else ""} \
      ~{if (usa) then "-usa" else ""} \
      ~{if (name) then "-name" else ""} \
      ~{if (description) then "-description" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    case_sensitive: "boolean    [N] Do a case-sensitive search"
    html: "boolean    [N] Format output as an HTML table"
    only: "boolean    [N] This is a way of shortening the command\\nline if you only want a few things to be\\ndisplayed. Instead of specifying:\\n'-nohead -noname -nousa -noacc -nodesc'\\nto get only the name output, you can specify\\n'-only -name'"
    heading: "boolean    [@(!$(only))] Display column headings"
    usa: "boolean    [@(!$(only))] Display the USA of the"
    name: "boolean    [@(!$(only))] Display 'name' column"
    description: "boolean    [@(!$(only))] Display 'description' column"
    sequence: "-accession          boolean    [@(!$(only))] Display 'accession' column"
  }
  output {
    File out_stdout = stdout()
  }
}