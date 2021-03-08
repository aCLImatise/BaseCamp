version 1.0

task MmseqsView {
  input {
    String? id_list
    Int? idx_entry_type
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs view \
      ~{if defined(id_list) then ("--id-list " +  '"' + id_list + '"') else ""} \
      ~{if defined(idx_entry_type) then ("--idx-entry-type " +  '"' + idx_entry_type + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    id_list: "Entries to be printed separated by ',' []"
    idx_entry_type: "0: sequence, 1: src sequence, 2: header, 3: src header [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}