version 1.0

task OncogeminiDbInfoDb {
  input {
    Boolean? v
    String? annotation_dir
    String on_co_gemini
  }
  command <<<
    oncogemini db_info db \
      ~{on_co_gemini} \
      ~{true="-v" false="" v} \
      ~{if defined(annotation_dir) then ("--annotation-dir " +  '"' + annotation_dir + '"') else ""}
  >>>
  parameter_meta {
    v: ""
    annotation_dir: ""
    on_co_gemini: ""
  }
}