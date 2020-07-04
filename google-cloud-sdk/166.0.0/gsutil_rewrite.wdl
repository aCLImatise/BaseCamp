version 1.0

task GsutilRewrite {
  input {
    Boolean? continues_silently_printing
    Boolean? causes_gsutil_read
    Boolean? rewrite_objects_key
    Boolean? rewrite_objects_object
    Boolean? r_r_options
    String? rewrite_objects_using
  }
  command <<<
    gsutil rewrite \
      ~{true="-f" false="" continues_silently_printing} \
      ~{true="-I" false="" causes_gsutil_read} \
      ~{true="-k" false="" rewrite_objects_key} \
      ~{true="-O" false="" rewrite_objects_object} \
      ~{true="-R" false="" r_r_options} \
      ~{if defined(rewrite_objects_using) then ("-s " +  '"' + rewrite_objects_using + '"') else ""}
  >>>
  parameter_meta {
    continues_silently_printing: "Continues silently (without printing error messages) despite errors when rewriting multiple objects. If some of the objects could not be rewritten, gsutil's exit status will be non-zero even if this flag is set. This option is implicitly set when running \"gsutil -m rewrite ...\"."
    causes_gsutil_read: "Causes gsutil to read the list of objects to rewrite from stdin. This allows you to run a program that generates the list of objects to rewrite."
    rewrite_objects_key: "Rewrite the objects to the current encryption key specific in your boto configuration file. If encryption_key is specified, encrypt all objects with this key. If encryption_key is unspecified, decrypt all objects. See `gsutil help encryption` for details on encryption configuration."
    rewrite_objects_object: "Rewrite objects with the bucket's default object ACL instead of the existing object ACL. This is needed if you do not have OWNER permission on the object."
    r_r_options: "The -R and -r options are synonymous. Causes bucket or bucket subdirectory contents to be rewritten recursively."
    rewrite_objects_using: "Rewrite objects using the specified storage class."
  }
}