version 1.0

task GsutilRm {
  input {
    Boolean? continues_silently_printing
    Boolean? causes_gsutil_read
    Boolean? r_r_options
    Boolean? delete_versions_object
    String subdirectories_dot
  }
  command <<<
    gsutil rm \
      ~{subdirectories_dot} \
      ~{if (continues_silently_printing) then "-f" else ""} \
      ~{if (causes_gsutil_read) then "-I" else ""} \
      ~{if (r_r_options) then "-R" else ""} \
      ~{if (delete_versions_object) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    continues_silently_printing: "Continues silently (without printing error messages) despite\\nerrors when removing multiple objects. If some of the objects\\ncould not be removed, gsutil's exit status will be non-zero even\\nif this flag is set. Execution will still halt if an inaccessible\\nbucket is encountered. This option is implicitly set when running\\n\\\"gsutil -m rm ...\\\"."
    causes_gsutil_read: "Causes gsutil to read the list of objects to remove from stdin.\\nThis allows you to run a program that generates the list of\\nobjects to remove."
    r_r_options: "The -R and -r options are synonymous. Causes bucket or bucket\\nsubdirectory contents (all objects and subdirectories that it\\ncontains) to be removed recursively. If used with a bucket-only\\nURL (like gs://bucket), after deleting objects and subdirectories\\ngsutil will delete the bucket. This option implies the -a option\\nand will delete all object versions."
    delete_versions_object: "Delete all versions of an object."
    subdirectories_dot: "You can also use the -r option to specify recursive object deletion. Thus, for"
  }
  output {
    File out_stdout = stdout()
  }
}