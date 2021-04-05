version 1.0

task SpringMappy {
  input {
    String? list
    File? index
    String? database
    String? cross
    String? cross_reference
    File? log
    String? evalue
    String? zipped
  }
  command <<<
    spring_map_py \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(cross) then ("--cross " +  '"' + cross + '"') else ""} \
      ~{if defined(cross_reference) then ("--output " +  '"' + cross_reference + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if defined(zipped) then ("--zipped " +  '"' + zipped + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/springsuite:0.2--pyh3252c3a_0"
  }
  parameter_meta {
    list: "List of template entries `PDB_CHAIN`"
    index: "PDB Database Index file (ffindex)"
    database: "PDB Database files (ffdata)"
    cross: "Cross reference (unmapped)"
    cross_reference: "Cross reference"
    log: "Log File"
    evalue: "e-Value threshold"
    zipped: "Zipped extension in PDB Database\\n"
  }
  output {
    File out_stdout = stdout()
  }
}