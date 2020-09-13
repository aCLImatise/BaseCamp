version 1.0

task Showserver {
  input {
    Boolean? servername
    Boolean? show_types
    Boolean? html
    Boolean? full
    Boolean? methods
    Boolean? fields
    Boolean? defined
    Boolean? server_version
    Boolean? sort_by
    File? outfile
    Boolean? only
    Boolean? heading
    Boolean? scope
    Boolean? type
    Boolean? id
    Boolean? query
    Boolean? all
    Boolean? comment
  }
  command <<<
    showserver \
      ~{if (servername) then "-servername" else ""} \
      ~{if (show_types) then "-showtypes" else ""} \
      ~{if (html) then "-html" else ""} \
      ~{if (full) then "-full" else ""} \
      ~{if (methods) then "-methods" else ""} \
      ~{if (fields) then "-fields" else ""} \
      ~{if (defined) then "-defined" else ""} \
      ~{if (server_version) then "-serverversion" else ""} \
      ~{if (sort_by) then "-sortby" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (only) then "-only" else ""} \
      ~{if (heading) then "-heading" else ""} \
      ~{if (scope) then "-scope" else ""} \
      ~{if (type) then "-type" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (query) then "-query" else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (comment) then "-comment" else ""}
  >>>
  parameter_meta {
    servername: "string     Name of a single server to give information\\non (Any string)"
    show_types: "menu       [*] Show type(s) (Values: Protein (Protein\\nsequences); Nucleic (Nucleotide sequences);\\nSequence (Any sequence data); Protfeatures\\n(Protein features); Nucfeatures (Nucleotide\\nfeatures); Features (Any feature table\\ndata); Obo (OBO ontology data); Resource\\n(Data resource); Taxonomy (Taxonomy data);\\nAssembly (Assembled short read data); Text\\n(text data); Html (HTML text data); Xml (XML\\ntext data); Unknown (Unspecified datatype\\nto be defined for each database))"
    html: "boolean    [N] Format output as an HTML table"
    full: "boolean    [N] Display all columns"
    methods: "boolean    [$(full)] This displays the access methods\\nthat can be used on this server, for all,\\nquery or ID access"
    fields: "boolean    [$(full)] This displays the search fields\\nthat can be used on this server, other than\\nthe standard 'id' or 'acc' fields."
    defined: "boolean    [$(full)] This displays a short name for the\\nfile containing the server definition"
    server_version: "boolean    [$(full)] Display 'version' column"
    sort_by: "menu       [type] Sort by (Values: defined (Definition\\nfile short name); type (Datatype))"
    outfile: "outfile    [stdout] Output file name"
    only: "toggle     [N] This is a way of shortening the command\\nline if you only want a few standard columns\\nto be displayed. Instead of specifying:\\n'-nohead -notype -noid -noquery -noall'\\nto get only the comment output, you can\\nspecify\\n'-only -comment'"
    heading: "boolean    [@(!$(only))] Display column headings"
    scope: "boolean    [@(!$(only))] Display 'scope' column"
    type: "boolean    [@(!$(only))] Display 'type' column"
    id: "boolean    [@(!$(only))] Display 'id' column"
    query: "boolean    [@(!$(only))] Display 'qry' column"
    all: "boolean    [@(!$(only))] Display 'all' column"
    comment: "boolean    [@(!$(only))] Display 'comment' column"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}