version 1.0

task NextflowbakLog {
  input {
    Boolean? after
    Boolean? before
    Boolean? but
    Boolean? fields
    Boolean? filter
    Boolean? list_fields
    Boolean? quiet
    Boolean? character_used_valuesdefault
    Boolean? template
    String log
  }
  command <<<
    nextflow_bak log \
      ~{log} \
      ~{if (after) then "-after" else ""} \
      ~{if (before) then "-before" else ""} \
      ~{if (but) then "-but" else ""} \
      ~{if (fields) then "-fields" else ""} \
      ~{if (filter) then "-filter" else ""} \
      ~{if (list_fields) then "-list-fields" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (character_used_valuesdefault) then "-s" else ""} \
      ~{if (template) then "-template" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    after: "Show log entries for runs executed after the specified one"
    before: "Show log entries for runs executed before the specified one"
    but: "Show log entries of all runs except the specified one"
    fields: "Comma separated list of fields to include in the printed log -- Use the\\n`-l` option to show the list of available fields"
    filter: "Filter log entries by a custom expression e.g. process =~ /foo.*/ &&\\nstatus == 'COMPLETED'"
    list_fields: "Show all available fields\\nDefault: false"
    quiet: "Show only run names\\nDefault: false"
    character_used_valuesdefault: "Character used to separate column values\\nDefault:"
    template: "Text template used to each record in the log\\n"
    log: ""
  }
  output {
    File out_stdout = stdout()
  }
}