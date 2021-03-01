version 1.0

task AnalyzeScaffolds {
  input {
    File? mandatory_path_gkpstore
    File? version_mandatory_path
    File? version_optional_path
    String? e
    String? n
    String? s
    String? o
  }
  command <<<
    analyzeScaffolds \
      ~{if defined(mandatory_path_gkpstore) then ("-g " +  '"' + mandatory_path_gkpstore + '"') else ""} \
      ~{if defined(version_mandatory_path) then ("-t " +  '"' + version_mandatory_path + '"') else ""} \
      ~{if defined(version_optional_path) then ("-c " +  '"' + version_optional_path + '"') else ""} \
      ~{if defined(e) then ("-E " +  '"' + e + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mandatory_path_gkpstore: "mandatory path to the gkpStore"
    version_mandatory_path: "version     mandatory path to the tigStore and version"
    version_optional_path: "version   optional path to a checkpoint and version"
    e: ""
    n: ""
    s: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}