version 1.0

task Showdb {
  input {
    Boolean? database
    Boolean? html
    Boolean? access
    Boolean? methods
    Boolean? tax_scope
    Boolean? fields
    Boolean? num_fields
    Boolean? aliases
    Boolean? num_aliases
    Boolean? examples
    Boolean? num_examples
    Boolean? defined
    Boolean? release
    File? outfile
    Boolean? only
    Boolean? heading
    Boolean? type
    Boolean? id
    Boolean? query
    Boolean? all
    Boolean? comment
    String files
  }
  command <<<
    showdb \
      ~{files} \
      ~{if (database) then "-database" else ""} \
      ~{if (html) then "-html" else ""} \
      ~{if (access) then "-access" else ""} \
      ~{if (methods) then "-methods" else ""} \
      ~{if (tax_scope) then "-taxscope" else ""} \
      ~{if (fields) then "-fields" else ""} \
      ~{if (num_fields) then "-numfields" else ""} \
      ~{if (aliases) then "-aliases" else ""} \
      ~{if (num_aliases) then "-numaliases" else ""} \
      ~{if (examples) then "-examples" else ""} \
      ~{if (num_examples) then "-numexamples" else ""} \
      ~{if (defined) then "-defined" else ""} \
      ~{if (release) then "-release" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (only) then "-only" else ""} \
      ~{if (heading) then "-heading" else ""} \
      ~{if (type) then "-type" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (query) then "-query" else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (comment) then "-comment" else ""}
  >>>
  parameter_meta {
    database: "string     Name of a single database to give\\ninformation on (Any string)"
    html: "boolean    [N] Format output as an HTML table"
    access: "boolean    [$(full)] This displays the levels of access\\nthat can be used on this database"
    methods: "boolean    [$(full)] This displays the access methods\\nthat can be used on this database, for all,\\nquery or ID access"
    tax_scope: "boolean    [$(full)] This displays the taxons covered\\nby this database"
    fields: "boolean    [$(full)] This displays the search fields\\nthat can be used on this database, including\\nthe standard 'id' or 'acc' fields"
    num_fields: "boolean    [$(full)] This displays the number of search\\nfields that can be used on this database,\\nincluding the standard 'id' or 'acc' fields"
    aliases: "boolean    [$(full)] This displays the alias names that\\ncan be used for this database"
    num_aliases: "boolean    [$(full)] This displays the number of alias\\nnames that can be used for this database"
    examples: "boolean    [$(full)] This displays the example queries\\nthat can be used to test this database"
    num_examples: "boolean    [$(full)] This displays the number of\\nexample queries that can be used to test\\nthis database"
    defined: "boolean    [$(full)] This displays a short name for the\\nfile containing the database definition"
    release: "boolean    [$(full)] Display 'release' column"
    outfile: "outfile    [stdout] Output file name"
    only: "toggle     [N] This is a way of shortening the command\\nline if you only want a few standard columns\\nto be displayed. Instead of specifying:\\n'-nohead -notype -noid -noquery -noall'\\nto get only the comment output, you can\\nspecify\\n'-only -comment'"
    heading: "boolean    [@(!$(only))] Display column headings"
    type: "boolean    [@(!$(only))] Display 'type' column"
    id: "boolean    [@(!$(only))] Display 'id' access column"
    query: "boolean    [@(!$(only))] Display 'qry' access column"
    all: "boolean    [@(!$(only))] Display 'all' access column"
    comment: "boolean    [@(!$(only))] Display 'comment' column"
    files: "-full               boolean    [N] Display all columns"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}