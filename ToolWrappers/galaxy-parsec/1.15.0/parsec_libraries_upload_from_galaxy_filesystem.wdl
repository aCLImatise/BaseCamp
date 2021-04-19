version 1.0

task ParsecLibrariesUploadFromGalaxyFilesystem {
  input {
    Directory? folder_id
    File? file_type
    String? db_key
    String? link_data_only
    Boolean? preserve_dirs
    Boolean? tag_using_filenames
    String filesystem_paths
    String filenames_dot
  }
  command <<<
    parsec libraries upload_from_galaxy_filesystem \
      ~{filesystem_paths} \
      ~{filenames_dot} \
      ~{if defined(folder_id) then ("--folder_id " +  '"' + folder_id + '"') else ""} \
      ~{if defined(file_type) then ("--file_type " +  '"' + file_type + '"') else ""} \
      ~{if defined(db_key) then ("--dbkey " +  '"' + db_key + '"') else ""} \
      ~{if defined(link_data_only) then ("--link_data_only " +  '"' + link_data_only + '"') else ""} \
      ~{if (preserve_dirs) then "--preserve_dirs" else ""} \
      ~{if (tag_using_filenames) then "--tag_using_filenames" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    folder_id: "id of the folder where to place the uploaded files.\\nIf not provided, the root folder will be used"
    file_type: "Galaxy file format name  [default: auto]"
    db_key: "Dbkey  [default: ?]"
    link_data_only: "either 'copy_files' (default) or 'link_to_files'.\\nSetting to 'link_to_files' symlinks instead of\\ncopying the files"
    preserve_dirs: "Indicate whether to preserve the directory structure\\nwhen importing dir"
    tag_using_filenames: "Indicate whether to generate dataset tags from"
    filesystem_paths: "Upload a set of files already present on the filesystem of the Galaxy"
    filenames_dot: "--tags TEXT            A list of tags to add to the datasets"
  }
  output {
    File out_stdout = stdout()
  }
}