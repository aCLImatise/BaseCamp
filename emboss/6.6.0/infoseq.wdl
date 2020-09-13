version 1.0

task Infoseq {
  input {
    Boolean? outfile
    Boolean? html
    String? columns
    Boolean? only
    Boolean? usa
    Boolean? name
    Boolean? accession
    Boolean? gi
    Boolean? seq_version
    Boolean? type
    Boolean? length
    Boolean? pgc
    Boolean? description
    String overriden_dot
    String sequence
    String column
  }
  command <<<
    infoseq \
      ~{overriden_dot} \
      ~{sequence} \
      ~{column} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (html) then "-html" else ""} \
      ~{if defined(columns) then ("-columns " +  '"' + columns + '"') else ""} \
      ~{if (only) then "-only" else ""} \
      ~{if (usa) then "-usa" else ""} \
      ~{if (name) then "-name" else ""} \
      ~{if (accession) then "-accession" else ""} \
      ~{if (gi) then "-gi" else ""} \
      ~{if (seq_version) then "-seqversion" else ""} \
      ~{if (type) then "-type" else ""} \
      ~{if (length) then "-length" else ""} \
      ~{if (pgc) then "-pgc" else ""} \
      ~{if (description) then "-description" else ""}
  >>>
  parameter_meta {
    outfile: "outfile    [stdout] If you enter the name of a file\\nhere then this program will write the\\nsequence details into that file."
    html: "boolean    [N] Format output as an HTML table"
    columns: "set on, the -delimiter option is"
    only: "boolean    [N] This is a way of shortening the command\\nline if you only want a few things to be\\ndisplayed. Instead of specifying:\\n'-nohead -noname -noacc -notype -nopgc\\n-nodesc'\\nto get only the length output, you can\\nspecify\\n'-only -length'"
    usa: "boolean    [@(!$(only))] Display the USA of the"
    name: "boolean    [@(!$(only))] Display 'name' column"
    accession: "boolean    [@(!$(only))] Display 'accession' column"
    gi: "boolean    [N] Display 'GI' column"
    seq_version: "boolean    [N] Display 'version' column"
    type: "boolean    [@(!$(only))] Display 'type' column"
    length: "boolean    [@(!$(only))] Display 'length' column"
    pgc: "boolean    [@(!$(only))] Display 'percent GC content'"
    description: "boolean    [@(!$(only))] Display 'description' column"
    overriden_dot: "-delimiter          string     [|] This string, which is usually a single"
    sequence: "-database           boolean    [@(!$(only))] Display 'database' column"
    column: "-organism           boolean    [@(!$(only))] Display 'organism' column"
  }
  output {
    File out_stdout = stdout()
  }
}