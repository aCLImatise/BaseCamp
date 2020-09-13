version 1.0

task RunCAoverlapStoreBuild {
  input {
    File? path_location_created
    String? prefix_of_store
    String? type_store_obt
    File? path_to_gkpstore
    File? path_input_files
    String? jobs
    String? memory
    Boolean? delete_early
    Boolean? no_delete
    String? max_error
    Boolean? submit
  }
  command <<<
    runCA_overlapStoreBuild \
      ~{if defined(path_location_created) then ("-d " +  '"' + path_location_created + '"') else ""} \
      ~{if defined(prefix_of_store) then ("-p " +  '"' + prefix_of_store + '"') else ""} \
      ~{if defined(type_store_obt) then ("-t " +  '"' + type_store_obt + '"') else ""} \
      ~{if defined(path_to_gkpstore) then ("-g " +  '"' + path_to_gkpstore + '"') else ""} \
      ~{if defined(path_input_files) then ("-i " +  '"' + path_input_files + '"') else ""} \
      ~{if defined(jobs) then ("-jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(memory) then ("-memory " +  '"' + memory + '"') else ""} \
      ~{if (delete_early) then "-deleteearly" else ""} \
      ~{if (no_delete) then "-nodelete" else ""} \
      ~{if defined(max_error) then ("-maxerror " +  '"' + max_error + '"') else ""} \
      ~{if (submit) then "-submit" else ""}
  >>>
  parameter_meta {
    path_location_created: "path to location where store should be created"
    prefix_of_store: "prefix of store"
    type_store_obt: "type of store: obt dup mer ovl"
    path_to_gkpstore: "path to gkpStore"
    path_input_files: "path to input files"
    jobs: "create 'j' sorting jobs"
    memory: "request 'm' gigabytes memory from SGE for sorting"
    delete_early: "delete intermediate files as soon as possible (unsafe)"
    no_delete: "do not delete intermediate files"
    max_error: "discard overlaps with more than 'e' fraction error (no filtering by default)"
    submit: "automatically submit to SGE"
  }
  output {
    File out_stdout = stdout()
  }
}