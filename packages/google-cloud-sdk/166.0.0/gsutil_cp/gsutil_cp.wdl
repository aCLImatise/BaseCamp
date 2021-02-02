version 1.0

task GsutilCp {
  input {
    String? sets_named_cannedacl
    Boolean? copy_source_versions
    Boolean? error_occurs_continue
    Boolean? copy_mode_ie
    Boolean? exclude_symlinks_when
    File? outputs_manifest_file
    Boolean? noclobber_when_specified
    Boolean? causes_acls_preserved
    Boolean? causes_posix_attributes
    Boolean? r_r_options
    String? storage_class_notspecified
    Boolean? skip_objects_unsupported
    Boolean? requests_versionspecific_url
    Boolean? applies_gzip_contentencoding_file_upload
    Boolean? applies_gzip_contentencoding_file_uploads
    String metadata_dot
    String identical_dot
    String hashing
    String uploading
    String operation_dot
    String copied_dot
  }
  command <<<
    gsutil cp \
      ~{metadata_dot} \
      ~{identical_dot} \
      ~{hashing} \
      ~{uploading} \
      ~{operation_dot} \
      ~{copied_dot} \
      ~{if defined(sets_named_cannedacl) then ("-a " +  '"' + sets_named_cannedacl + '"') else ""} \
      ~{if (copy_source_versions) then "-A" else ""} \
      ~{if (error_occurs_continue) then "-c" else ""} \
      ~{if (copy_mode_ie) then "-D" else ""} \
      ~{if (exclude_symlinks_when) then "-e" else ""} \
      ~{if defined(outputs_manifest_file) then ("-L " +  '"' + outputs_manifest_file + '"') else ""} \
      ~{if (noclobber_when_specified) then "-n" else ""} \
      ~{if (causes_acls_preserved) then "-p" else ""} \
      ~{if (causes_posix_attributes) then "-P" else ""} \
      ~{if (r_r_options) then "-R" else ""} \
      ~{if defined(storage_class_notspecified) then ("-s " +  '"' + storage_class_notspecified + '"') else ""} \
      ~{if (skip_objects_unsupported) then "-U" else ""} \
      ~{if (requests_versionspecific_url) then "-v" else ""} \
      ~{if (applies_gzip_contentencoding_file_upload) then "-z" else ""} \
      ~{if (applies_gzip_contentencoding_file_uploads) then "-Z" else ""}
  >>>
  parameter_meta {
    sets_named_cannedacl: "Sets named canned_acl when uploaded objects created. See\\n\\\"gsutil help acls\\\" for further details."
    copy_source_versions: "Copy all source versions from a source buckets/folders.\\nIf not set, only the live version of each source object is\\ncopied. Note: this option is only useful when the destination\\nbucket has versioning enabled."
    error_occurs_continue: "If an error occurs, continue to attempt to copy the remaining\\nfiles. If any copies were unsuccessful, gsutil's exit status\\nwill be non-zero even if this flag is set. This option is\\nimplicitly set when running \\\"gsutil -m cp...\\\". Note: -c only\\napplies to the actual copying operation. If an error occurs\\nwhile iterating over the files in the local directory (e.g.,\\ninvalid Unicode file name) gsutil will print an error message\\nand abort."
    copy_mode_ie: "Copy in \\\"daisy chain\\\" mode, i.e., copying between two buckets\\nby hooking a download to an upload, via the machine where\\ngsutil is run. This stands in contrast to the default, where\\ndata are copied between two buckets \\\"in the cloud\\\", i.e.,\\nwithout needing to copy via the machine where gsutil runs.\\nBy default, a \\\"copy in the cloud\\\" when the source is a\\ncomposite object will retain the composite nature of the\\nobject. However, Daisy chain mode can be used to change a\\ncomposite object into a non-composite object. For example:\\ngsutil cp -D -p gs://bucket/obj gs://bucket/obj_tmp\\ngsutil mv -p gs://bucket/obj_tmp gs://bucket/obj\\nNote: Daisy chain mode is automatically used when copying\\nbetween providers (e.g., to copy data from Google Cloud Storage\\nto another provider)."
    exclude_symlinks_when: "Exclude symlinks. When specified, symbolic links will not be"
    outputs_manifest_file: "Outputs a manifest log file with detailed information about\\neach item that was copied. This manifest contains the following\\ninformation for each item:\\n- Source path.\\n- Destination path.\\n- Source size.\\n- Bytes transferred.\\n- MD5 hash.\\n- UTC date and time transfer was started in ISO 8601 format.\\n- UTC date and time transfer was completed in ISO 8601 format.\\n- Upload id, if a resumable upload was performed.\\n- Final result of the attempted transfer, success or failure.\\n- Failure details, if any.\\nIf the log file already exists, gsutil will use the file as an\\ninput to the copy process, and will also append log items to\\nthe existing file. Files/objects that are marked in the\\nexisting log file as having been successfully copied (or\\nskipped) will be ignored. Files/objects without entries will be\\ncopied and ones previously marked as unsuccessful will be\\nretried. This can be used in conjunction with the -c option to\\nbuild a script that copies a large number of objects reliably,\\nusing a bash script like the following:\\nuntil gsutil cp -c -L cp.log -r ./dir gs://bucket; do\\nsleep 1\\ndone\\nThe -c option will cause copying to continue after failures\\noccur, and the -L option will allow gsutil to pick up where it\\nleft off without duplicating work. The loop will continue\\nrunning as long as gsutil exits with a non-zero status (such a\\nstatus indicates there was at least one failure during the\\ngsutil run).\\nNote: If you're trying to synchronize the contents of a\\ndirectory and a bucket (or two buckets), see\\n\\\"gsutil help rsync\\\"."
    noclobber_when_specified: "No-clobber. When specified, existing files or objects at the\\ndestination will not be overwritten. Any items that are skipped\\nby this option will be reported as being skipped. This option\\nwill perform an additional GET request to check if an item\\nexists before attempting to upload the data. This will save\\nretransmitting data, but the additional HTTP requests may make\\nsmall object transfers slower and more expensive."
    causes_acls_preserved: "Causes ACLs to be preserved when copying in the cloud. Note\\nthat this option has performance and cost implications when\\nusing  the XML API, as it requires separate HTTP calls for\\ninteracting with ACLs. (There are no such performance or cost\\nimplications when using the -p option with the JSON API.) The\\nperformance issue can be mitigated to some degree by using\\ngsutil -m cp to cause parallel copying. Note that this option\\nonly works if you have OWNER access to all of the objects that\\nare copied.\\nYou can avoid the additional performance and cost of using\\ncp -p if you want all objects in the destination bucket to end\\nup with the same ACL by setting a default object ACL on that\\nbucket instead of using cp -p. See \\\"gsutil help defacl\\\".\\nNote that it's not valid to specify both the -a and -p options\\ntogether."
    causes_posix_attributes: "Causes POSIX attributes to be preserved when objects are\\ncopied. With this feature enabled, gsutil cp will copy fields\\nprovided by stat. These are the user ID of the owner, the group\\nID of the owning group, the mode (permissions) of the file, and\\nthe access/modification time of the file. For downloads, these\\nattributes will only be set if the source objects were uploaded\\nwith this flag enabled.\\nOn Windows, this flag will only set and restore access time and\\nmodification time. This is because Windows doesn't have a\\nnotion of POSIX uid/gid/mode."
    r_r_options: "The -R and -r options are synonymous. Causes directories,\\nbuckets, and bucket subdirectories to be copied recursively.\\nIf you neglect to use this option for an upload, gsutil will\\ncopy any files it finds and skip any directories. Similarly,\\nneglecting to specify this option for a download will cause\\ngsutil to copy any objects at the current bucket directory\\nlevel, and skip any subdirectories."
    storage_class_notspecified: "The storage class of the destination object(s). If not\\nspecified, the default storage class of the destination bucket\\nis used. Not valid for copying to non-cloud destinations."
    skip_objects_unsupported: "Skip objects with unsupported object types instead of failing.\\nUnsupported object types are Amazon S3 Objects in the GLACIER\\nstorage class."
    requests_versionspecific_url: "Requests that the version-specific URL for each uploaded object\\nbe printed. Given this URL you can make future upload requests\\nthat are safe in the face of concurrent updates, because Google\\nCloud Storage will refuse to perform the update if the current\\nobject version doesn't match the version-specific URL. See\\n\\\"gsutil help versions\\\" for more details."
    applies_gzip_contentencoding_file_upload: "<ext,...>   Applies gzip content-encoding to any file upload whose\\nextension matches the -z extension list. This is useful when\\nuploading files with compressible content (such as .js, .css,\\nor .html files) because it saves network bandwidth and space\\nin Google Cloud Storage, which in turn reduces storage costs.\\nWhen you specify the -z option, the data from your files is\\ncompressed before it is uploaded, but your actual files are\\nleft uncompressed on the local disk. The uploaded objects\\nretain the Content-Type and name of the original files but are\\ngiven a Content-Encoding header with the value \\\"gzip\\\" to\\nindicate that the object data stored are compressed on the\\nGoogle Cloud Storage servers.\\nFor example, the following command:\\ngsutil cp -z html -a public-read \\\\ncattypes.html tabby.jpeg gs://mycats\\nwill do all of the following:\\n- Upload the files cattypes.html and tabby.jpeg to the bucket\\ngs://mycats (cp command)\\n- Set the Content-Type of cattypes.html to text/html and\\ntabby.jpeg to image/jpeg (based on file extensions)\\n- Compress the data in the file cattypes.html (-z option)\\n- Set the Content-Encoding for cattypes.html to gzip\\n(-z option)\\n- Set the ACL for both files to public-read (-a option)\\n- If a user tries to view cattypes.html in a browser, the\\nbrowser will know to uncompress the data based on the\\nContent-Encoding header and to render it as HTML based on\\nthe Content-Type header.\\nNote that if you download an object with Content-Encoding:gzip\\ngsutil will decompress the content before writing the local\\nfile."
    applies_gzip_contentencoding_file_uploads: "Applies gzip content-encoding to file uploads. This option\\nworks like the -z option described above, but it applies to\\nall uploaded files, regardless of extension.\\nWarning: If you use this option and some of the source files\\ndon't compress well (e.g., that's often true of binary data),\\nthis option may result in files taking up more space in the\\ncloud than they would if left uncompressed.\\n"
    metadata_dot: "Copies spanning locations and/or storage classes cause data to be rewritten"
    identical_dot: "Note that by default, the gsutil cp command does not copy the object"
    hashing: "obj:"
    uploading: "gs://your-bucket/obj:                                182 b/182 B"
    operation_dot: "This feature is only available for Google Cloud Storage objects because it"
    copied_dot: "-I             Causes gsutil to read the list of files or objects to copy from"
  }
  output {
    File out_stdout = stdout()
  }
}