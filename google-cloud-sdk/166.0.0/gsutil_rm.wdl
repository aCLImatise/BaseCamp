version 1.0

task GsutilRm {
  input {
    Boolean? continues_silently_printing
    Boolean? causes_gsutil_read
    Boolean? r_r_options
    Boolean? delete_versions_object
  }
  command <<<
    gsutil rm \
      ~{true="-f" false="" continues_silently_printing} \
      ~{true="-I" false="" causes_gsutil_read} \
      ~{true="-R" false="" r_r_options} \
      ~{true="-a" false="" delete_versions_object}
  >>>
  parameter_meta {
    continues_silently_printing: "Continues silently (without printing error messages) despite errors when removing multiple objects. If some of the objects could not be removed, gsutil's exit status will be non-zero even if this flag is set. Execution will still halt if an inaccessible bucket is encountered. This option is implicitly set when running \"gsutil -m rm ...\"."
    causes_gsutil_read: "Causes gsutil to read the list of objects to remove from stdin. This allows you to run a program that generates the list of objects to remove."
    r_r_options: "The -R and -r options are synonymous. Causes bucket or bucket subdirectory contents (all objects and subdirectories that it contains) to be removed recursively. If used with a bucket-only URL (like gs://bucket), after deleting objects and subdirectories gsutil will delete the bucket. This option implies the -a option and will delete all object versions."
    delete_versions_object: "Delete all versions of an object."
  }
}