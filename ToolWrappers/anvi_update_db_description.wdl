version 1.0

task Anviupdatedbdescription {
  input {
    File? description
    String db
  }
  command <<<
    anvi_update_db_description \
      ~{db} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""}
  >>>
  parameter_meta {
    description: "A plain text file that contains some description about\\nthe project. You can use Markdwon syntax. The\\ndescription text will be rendered and shown in all\\nrelevant interfaces, including the anvi'o interactive\\ninterface, or anvi'o summary outputs.\\n"
    db: "An anvi'o database."
  }
  output {
    File out_stdout = stdout()
  }
}