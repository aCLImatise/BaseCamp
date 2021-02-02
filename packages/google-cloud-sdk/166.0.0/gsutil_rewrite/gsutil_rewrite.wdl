version 1.0

task GsutilRewrite {
  input {
    Boolean? continues_silently_printing
    Boolean? causes_gsutil_read
    Boolean? rewrite_objects_see
    Boolean? rewrite_objects_buckets
    Boolean? r_r_options
    String? rewrite_objects_using
    String objects_dot
  }
  command <<<
    gsutil rewrite \
      ~{objects_dot} \
      ~{if (continues_silently_printing) then "-f" else ""} \
      ~{if (causes_gsutil_read) then "-I" else ""} \
      ~{if (rewrite_objects_see) then "-k" else ""} \
      ~{if (rewrite_objects_buckets) then "-O" else ""} \
      ~{if (r_r_options) then "-R" else ""} \
      ~{if defined(rewrite_objects_using) then ("-s " +  '"' + rewrite_objects_using + '"') else ""}
  >>>
  parameter_meta {
    continues_silently_printing: "Continues silently (without printing error messages) despite\\nerrors when rewriting multiple objects. If some of the objects\\ncould not be rewritten, gsutil's exit status will be non-zero\\neven if this flag is set. This option is implicitly set when\\nrunning \\\"gsutil -m rewrite ...\\\"."
    causes_gsutil_read: "Causes gsutil to read the list of objects to rewrite from stdin.\\nThis allows you to run a program that generates the list of\\nobjects to rewrite."
    rewrite_objects_see: "Rewrite the objects to the current encryption key specific in\\nyour boto configuration file. If encryption_key is specified,\\nencrypt all objects with this key. If encryption_key is\\nunspecified, decrypt all objects. See `gsutil help encryption`\\nfor details on encryption configuration."
    rewrite_objects_buckets: "Rewrite objects with the bucket's default object ACL instead of\\nthe existing object ACL. This is needed if you do not have\\nOWNER permission on the object."
    r_r_options: "The -R and -r options are synonymous. Causes bucket or bucket\\nsubdirectory contents to be rewritten recursively."
    rewrite_objects_using: "Rewrite objects using the specified storage class."
    objects_dot: "For example, the command:\\ngsutil rewrite -k gs://bucket/**"
  }
  output {
    File out_stdout = stdout()
  }
}