class: CommandLineTool
id: gsutil_cp.cwl
inputs:
- id: in_sets_named_cannedacl
  doc: "Sets named canned_acl when uploaded objects created. See\n\"gsutil help acls\"\
    \ for further details."
  type: string
  inputBinding:
    prefix: -a
- id: in_copy_source_versions
  doc: "Copy all source versions from a source buckets/folders.\nIf not set, only\
    \ the live version of each source object is\ncopied. Note: this option is only\
    \ useful when the destination\nbucket has versioning enabled."
  type: boolean
  inputBinding:
    prefix: -A
- id: in_error_occurs_continue
  doc: "If an error occurs, continue to attempt to copy the remaining\nfiles. If any\
    \ copies were unsuccessful, gsutil's exit status\nwill be non-zero even if this\
    \ flag is set. This option is\nimplicitly set when running \"gsutil -m cp...\"\
    . Note: -c only\napplies to the actual copying operation. If an error occurs\n\
    while iterating over the files in the local directory (e.g.,\ninvalid Unicode\
    \ file name) gsutil will print an error message\nand abort."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_copy_mode_ie
  doc: "Copy in \"daisy chain\" mode, i.e., copying between two buckets\nby hooking\
    \ a download to an upload, via the machine where\ngsutil is run. This stands in\
    \ contrast to the default, where\ndata are copied between two buckets \"in the\
    \ cloud\", i.e.,\nwithout needing to copy via the machine where gsutil runs.\n\
    By default, a \"copy in the cloud\" when the source is a\ncomposite object will\
    \ retain the composite nature of the\nobject. However, Daisy chain mode can be\
    \ used to change a\ncomposite object into a non-composite object. For example:\n\
    gsutil cp -D -p gs://bucket/obj gs://bucket/obj_tmp\ngsutil mv -p gs://bucket/obj_tmp\
    \ gs://bucket/obj\nNote: Daisy chain mode is automatically used when copying\n\
    between providers (e.g., to copy data from Google Cloud Storage\nto another provider)."
  type: boolean
  inputBinding:
    prefix: -D
- id: in_exclude_symlinks_when
  doc: Exclude symlinks. When specified, symbolic links will not be
  type: boolean
  inputBinding:
    prefix: -e
- id: in_outputs_manifest_file
  doc: "Outputs a manifest log file with detailed information about\neach item that\
    \ was copied. This manifest contains the following\ninformation for each item:\n\
    - Source path.\n- Destination path.\n- Source size.\n- Bytes transferred.\n- MD5\
    \ hash.\n- UTC date and time transfer was started in ISO 8601 format.\n- UTC date\
    \ and time transfer was completed in ISO 8601 format.\n- Upload id, if a resumable\
    \ upload was performed.\n- Final result of the attempted transfer, success or\
    \ failure.\n- Failure details, if any.\nIf the log file already exists, gsutil\
    \ will use the file as an\ninput to the copy process, and will also append log\
    \ items to\nthe existing file. Files/objects that are marked in the\nexisting\
    \ log file as having been successfully copied (or\nskipped) will be ignored. Files/objects\
    \ without entries will be\ncopied and ones previously marked as unsuccessful will\
    \ be\nretried. This can be used in conjunction with the -c option to\nbuild a\
    \ script that copies a large number of objects reliably,\nusing a bash script\
    \ like the following:\nuntil gsutil cp -c -L cp.log -r ./dir gs://bucket; do\n\
    sleep 1\ndone\nThe -c option will cause copying to continue after failures\noccur,\
    \ and the -L option will allow gsutil to pick up where it\nleft off without duplicating\
    \ work. The loop will continue\nrunning as long as gsutil exits with a non-zero\
    \ status (such a\nstatus indicates there was at least one failure during the\n\
    gsutil run).\nNote: If you're trying to synchronize the contents of a\ndirectory\
    \ and a bucket (or two buckets), see\n\"gsutil help rsync\"."
  type: File
  inputBinding:
    prefix: -L
- id: in_noclobber_when_specified
  doc: "No-clobber. When specified, existing files or objects at the\ndestination\
    \ will not be overwritten. Any items that are skipped\nby this option will be\
    \ reported as being skipped. This option\nwill perform an additional GET request\
    \ to check if an item\nexists before attempting to upload the data. This will\
    \ save\nretransmitting data, but the additional HTTP requests may make\nsmall\
    \ object transfers slower and more expensive."
  type: boolean
  inputBinding:
    prefix: -n
- id: in_causes_acls_preserved
  doc: "Causes ACLs to be preserved when copying in the cloud. Note\nthat this option\
    \ has performance and cost implications when\nusing  the XML API, as it requires\
    \ separate HTTP calls for\ninteracting with ACLs. (There are no such performance\
    \ or cost\nimplications when using the -p option with the JSON API.) The\nperformance\
    \ issue can be mitigated to some degree by using\ngsutil -m cp to cause parallel\
    \ copying. Note that this option\nonly works if you have OWNER access to all of\
    \ the objects that\nare copied.\nYou can avoid the additional performance and\
    \ cost of using\ncp -p if you want all objects in the destination bucket to end\n\
    up with the same ACL by setting a default object ACL on that\nbucket instead of\
    \ using cp -p. See \"gsutil help defacl\".\nNote that it's not valid to specify\
    \ both the -a and -p options\ntogether."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_causes_posix_attributes
  doc: "Causes POSIX attributes to be preserved when objects are\ncopied. With this\
    \ feature enabled, gsutil cp will copy fields\nprovided by stat. These are the\
    \ user ID of the owner, the group\nID of the owning group, the mode (permissions)\
    \ of the file, and\nthe access/modification time of the file. For downloads, these\n\
    attributes will only be set if the source objects were uploaded\nwith this flag\
    \ enabled.\nOn Windows, this flag will only set and restore access time and\n\
    modification time. This is because Windows doesn't have a\nnotion of POSIX uid/gid/mode."
  type: boolean
  inputBinding:
    prefix: -P
- id: in_r_r_options
  doc: "The -R and -r options are synonymous. Causes directories,\nbuckets, and bucket\
    \ subdirectories to be copied recursively.\nIf you neglect to use this option\
    \ for an upload, gsutil will\ncopy any files it finds and skip any directories.\
    \ Similarly,\nneglecting to specify this option for a download will cause\ngsutil\
    \ to copy any objects at the current bucket directory\nlevel, and skip any subdirectories."
  type: boolean
  inputBinding:
    prefix: -R
- id: in_storage_class_notspecified
  doc: "The storage class of the destination object(s). If not\nspecified, the default\
    \ storage class of the destination bucket\nis used. Not valid for copying to non-cloud\
    \ destinations."
  type: string
  inputBinding:
    prefix: -s
- id: in_skip_objects_unsupported
  doc: "Skip objects with unsupported object types instead of failing.\nUnsupported\
    \ object types are Amazon S3 Objects in the GLACIER\nstorage class."
  type: boolean
  inputBinding:
    prefix: -U
- id: in_requests_versionspecific_url
  doc: "Requests that the version-specific URL for each uploaded object\nbe printed.\
    \ Given this URL you can make future upload requests\nthat are safe in the face\
    \ of concurrent updates, because Google\nCloud Storage will refuse to perform\
    \ the update if the current\nobject version doesn't match the version-specific\
    \ URL. See\n\"gsutil help versions\" for more details."
  type: boolean
  inputBinding:
    prefix: -v
- id: in_applies_gzip_contentencoding_file_upload
  doc: "<ext,...>   Applies gzip content-encoding to any file upload whose\nextension\
    \ matches the -z extension list. This is useful when\nuploading files with compressible\
    \ content (such as .js, .css,\nor .html files) because it saves network bandwidth\
    \ and space\nin Google Cloud Storage, which in turn reduces storage costs.\nWhen\
    \ you specify the -z option, the data from your files is\ncompressed before it\
    \ is uploaded, but your actual files are\nleft uncompressed on the local disk.\
    \ The uploaded objects\nretain the Content-Type and name of the original files\
    \ but are\ngiven a Content-Encoding header with the value \"gzip\" to\nindicate\
    \ that the object data stored are compressed on the\nGoogle Cloud Storage servers.\n\
    For example, the following command:\ngsutil cp -z html -a public-read \\\ncattypes.html\
    \ tabby.jpeg gs://mycats\nwill do all of the following:\n- Upload the files cattypes.html\
    \ and tabby.jpeg to the bucket\ngs://mycats (cp command)\n- Set the Content-Type\
    \ of cattypes.html to text/html and\ntabby.jpeg to image/jpeg (based on file extensions)\n\
    - Compress the data in the file cattypes.html (-z option)\n- Set the Content-Encoding\
    \ for cattypes.html to gzip\n(-z option)\n- Set the ACL for both files to public-read\
    \ (-a option)\n- If a user tries to view cattypes.html in a browser, the\nbrowser\
    \ will know to uncompress the data based on the\nContent-Encoding header and to\
    \ render it as HTML based on\nthe Content-Type header.\nNote that if you download\
    \ an object with Content-Encoding:gzip\ngsutil will decompress the content before\
    \ writing the local\nfile."
  type: boolean
  inputBinding:
    prefix: -z
- id: in_applies_gzip_contentencoding_file_uploads
  doc: "Applies gzip content-encoding to file uploads. This option\nworks like the\
    \ -z option described above, but it applies to\nall uploaded files, regardless\
    \ of extension.\nWarning: If you use this option and some of the source files\n\
    don't compress well (e.g., that's often true of binary data),\nthis option may\
    \ result in files taking up more space in the\ncloud than they would if left uncompressed.\n"
  type: boolean
  inputBinding:
    prefix: -Z
- id: in_metadata_dot
  doc: Copies spanning locations and/or storage classes cause data to be rewritten
  type: string
  inputBinding:
    position: 0
- id: in_identical_dot
  doc: Note that by default, the gsutil cp command does not copy the object
  type: string
  inputBinding:
    position: 0
- id: in_hashing
  doc: 'obj:'
  type: string
  inputBinding:
    position: 0
- id: in_uploading
  doc: 'gs://your-bucket/obj:                                182 b/182 B'
  type: string
  inputBinding:
    position: 0
- id: in_operation_dot
  doc: This feature is only available for Google Cloud Storage objects because it
  type: string
  inputBinding:
    position: 0
- id: in_copied_dot
  doc: -I             Causes gsutil to read the list of files or objects to copy from
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsutil
- cp
