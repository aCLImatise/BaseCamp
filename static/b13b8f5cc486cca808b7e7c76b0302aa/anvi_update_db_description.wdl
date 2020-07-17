version 1.0

task AnviUpdateDbDescription {
  input {
    String? description
    String db
  }
  command <<<
    anvi-update-db-description \
      ~{db} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""}
  >>>
  parameter_meta {
    description: "A plain text file that contains some description about the project. You can use Markdwon syntax. The description text will be rendered and shown in all relevant interfaces, including the anvi'o interactive interface, or anvi'o summary outputs."
    db: "An anvi'o database."
  }
}