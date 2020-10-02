class: CommandLineTool
id: croo.cwl
inputs:
- id: in_out_def_json
  doc: "Output definition JSON file for a WDL file\ncorresponding to the specified\
    \ metadata.json file"
  type: File
  inputBinding:
    prefix: --out-def-json
- id: in_method
  doc: "Method to localize files on output directory/bucket.\n\"link\" means a soft-linking\
    \ and it's for local\ndirectory only. Original output files will be kept in\n\
    Cromwell's output directory. \"copy\" makes copies of\nCromwell's original outputs"
  type: Directory
  inputBinding:
    prefix: --method
- id: in_ucsc_genome_db
  doc: "UCSC genome browser's \"db=\" parameter. (e.g. hg38 for\nGRCh38 and mm10 for\
    \ mm10)"
  type: long
  inputBinding:
    prefix: --ucsc-genome-db
- id: in_ucsc_genome_pos
  doc: "UCSC genome browser's \"position=\" parameter. (e.g.\nchr1:35000-40000)"
  type: long
  inputBinding:
    prefix: --ucsc-genome-pos
- id: in_public_gcs
  doc: Your GCS (gs://) bucket is public.
  type: boolean
  inputBinding:
    prefix: --public-gcs
- id: in_use_pre_signed_url_s_three
  doc: Generate presigned URLS for files on s3://.
  type: boolean
  inputBinding:
    prefix: --use-presigned-url-s3
- id: in_use_pre_signed_url_gcs
  doc: "Generate presigned URLS for files on gs://. --gcp-\nprivate-key must be provided."
  type: boolean
  inputBinding:
    prefix: --use-presigned-url-gcs
- id: in_gcp_private_key
  doc: "Private key file (JSON/PKCS12) of a service account on\nGoogle Cloud Platform\
    \ (GCP). This key will be used to\nmake presigned URLs on files on gs://."
  type: File
  inputBinding:
    prefix: --gcp-private-key
- id: in_duration_pre_signed_url_s_three
  doc: "Duration for presigned URLs for files on s3:// in\nseconds."
  type: long
  inputBinding:
    prefix: --duration-presigned-url-s3
- id: in_duration_pre_signed_url_gcs
  doc: "Duration for presigned URLs for files on gs:// in\nseconds."
  type: string
  inputBinding:
    prefix: --duration-presigned-url-gcs
- id: in_tsv_mapping_path_to_url
  doc: "A 2-column TSV file with local path prefix and\ncorresponding URL prefix.\
    \ For example, using 1-line\n2-col TSV file with /var/www[TAB]http://my.server.com\n\
    will replace a local path /var/www/here/a.txt to a URL\nhttp://my.server.com/here/a.txt."
  type: File
  inputBinding:
    prefix: --tsv-mapping-path-to-url
- id: in_out_dir
  doc: "Output directory/bucket (LOCAL OR REMOTE). This can be\na local path, gs://\
    \ or s3://."
  type: File
  inputBinding:
    prefix: --out-dir
- id: in_tmp_dir
  doc: "LOCAL temporary cache directory. All temporary files\nfor auto-inter-storage\
    \ transfer will be stored here.\nYou can clean it up but will lose all cached\
    \ files so\nthat remote files will be re-downloaded."
  type: Directory
  inputBinding:
    prefix: --tmp-dir
- id: in_use_gs_util_for_s_three
  doc: "Use gsutil for direct tranfer between GCS and S3\nbuckets. Make sure that\
    \ you have \"gsutil\" installed\nand configured to have access to credentials\
    \ for GCS\nand S3 (e.g. ~/.boto or ~/.aws/credientials)"
  type: boolean
  inputBinding:
    prefix: --use-gsutil-for-s3
- id: in_no_checksum
  doc: "Always overwrite on output directory/bucket (--out-\ndir) even if md5-identical\
    \ files (or soft links)\nalready exist there. Md5 hash/filename/filesize\nchecking\
    \ will be skipped."
  type: File
  inputBinding:
    prefix: --no-checksum
- id: in_debug
  doc: Prints all logs >= DEBUG level
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_def_json
  doc: "Output definition JSON file for a WDL file\ncorresponding to the specified\
    \ metadata.json file"
  type: File
  outputBinding:
    glob: $(inputs.in_out_def_json)
- id: out_method
  doc: "Method to localize files on output directory/bucket.\n\"link\" means a soft-linking\
    \ and it's for local\ndirectory only. Original output files will be kept in\n\
    Cromwell's output directory. \"copy\" makes copies of\nCromwell's original outputs"
  type: Directory
  outputBinding:
    glob: $(inputs.in_method)
- id: out_out_dir
  doc: "Output directory/bucket (LOCAL OR REMOTE). This can be\na local path, gs://\
    \ or s3://."
  type: File
  outputBinding:
    glob: $(inputs.in_out_dir)
- id: out_no_checksum
  doc: "Always overwrite on output directory/bucket (--out-\ndir) even if md5-identical\
    \ files (or soft links)\nalready exist there. Md5 hash/filename/filesize\nchecking\
    \ will be skipped."
  type: File
  outputBinding:
    glob: $(inputs.in_no_checksum)
cwlVersion: v1.1
baseCommand:
- croo
