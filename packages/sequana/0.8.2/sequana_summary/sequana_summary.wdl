version 1.0

task SequanaSummary {
  input {
    File? file
    String? glob
    String welcome
    String to
    String se_quan_a
  }
  command <<<
    sequana_summary \
      ~{welcome} \
      ~{to} \
      ~{se_quan_a} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(glob) then ("--glob " +  '"' + glob + '"') else ""}
  >>>
  parameter_meta {
    file: "one filename (either FastQ or BED file; see"
    glob: "a glob/pattern of files. Must use quotes e.g."
    welcome: ""
    to: ""
    se_quan_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}