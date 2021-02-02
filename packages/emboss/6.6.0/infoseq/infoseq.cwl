class: CommandLineTool
id: infoseq.cwl
inputs:
- id: in_outfile
  doc: "outfile    [stdout] If you enter the name of a file\nhere then this program\
    \ will write the\nsequence details into that file."
  type: boolean
  inputBinding:
    prefix: -outfile
- id: in_html
  doc: boolean    [N] Format output as an HTML table
  type: boolean
  inputBinding:
    prefix: -html
- id: in_columns
  doc: set on, the -delimiter option is
  type: string
  inputBinding:
    prefix: -columns
- id: in_only
  doc: "boolean    [N] This is a way of shortening the command\nline if you only want\
    \ a few things to be\ndisplayed. Instead of specifying:\n'-nohead -noname -noacc\
    \ -notype -nopgc\n-nodesc'\nto get only the length output, you can\nspecify\n\
    '-only -length'"
  type: boolean
  inputBinding:
    prefix: -only
- id: in_usa
  doc: boolean    [@(!$(only))] Display the USA of the
  type: boolean
  inputBinding:
    prefix: -usa
- id: in_name
  doc: boolean    [@(!$(only))] Display 'name' column
  type: boolean
  inputBinding:
    prefix: -name
- id: in_accession
  doc: boolean    [@(!$(only))] Display 'accession' column
  type: boolean
  inputBinding:
    prefix: -accession
- id: in_gi
  doc: boolean    [N] Display 'GI' column
  type: boolean
  inputBinding:
    prefix: -gi
- id: in_seq_version
  doc: boolean    [N] Display 'version' column
  type: boolean
  inputBinding:
    prefix: -seqversion
- id: in_type
  doc: boolean    [@(!$(only))] Display 'type' column
  type: boolean
  inputBinding:
    prefix: -type
- id: in_length
  doc: boolean    [@(!$(only))] Display 'length' column
  type: boolean
  inputBinding:
    prefix: -length
- id: in_pgc
  doc: boolean    [@(!$(only))] Display 'percent GC content'
  type: boolean
  inputBinding:
    prefix: -pgc
- id: in_description
  doc: boolean    [@(!$(only))] Display 'description' column
  type: boolean
  inputBinding:
    prefix: -description
- id: in_overriden_dot
  doc: -delimiter          string     [|] This string, which is usually a single
  type: string
  inputBinding:
    position: 0
- id: in_sequence
  doc: -database           boolean    [@(!$(only))] Display 'database' column
  type: string
  inputBinding:
    position: 0
- id: in_column
  doc: -organism           boolean    [@(!$(only))] Display 'organism' column
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- infoseq
