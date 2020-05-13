class: CommandLineTool
id: croo.cwl
inputs:
- id: metadata_json
  doc: 'Path, URL or URI for metadata.json for a workflow Example: /scratch/sample1/metadata.json,
    gs://some/where/metadata.json, http://hello.com/world/metadata.json'
  type: string
  inputBinding:
    position: 0
- id: out_def_json
  doc: Output definition JSON file for a WDL file corresponding to the specified metadata.json
    file
  type: string
  inputBinding:
    prefix: --out-def-json
- id: method
  doc: Method to localize files on output directory/bucket. "link" means a soft-linking
    and it's for local directory only. Original output files will be kept in Cromwell's
    output directory. "copy" makes copies of Cromwell's original outputs
  type: string
  inputBinding:
    prefix: --method
- id: ucsc_genome_db
  doc: UCSC genome browser's "db=" parameter. (e.g. hg38 for GRCh38 and mm10 for mm10)
  type: string
  inputBinding:
    prefix: --ucsc-genome-db
- id: ucsc_genome_pos
  doc: UCSC genome browser's "position=" parameter. (e.g. chr1:35000-40000)
  type: string
  inputBinding:
    prefix: --ucsc-genome-pos
- id: public_gcs
  doc: Your GCS (gs://) bucket is public.
  type: boolean
  inputBinding:
    prefix: --public-gcs
- id: use_pre_signed_url_s3
  doc: Generate presigned URLS for files on s3://.
  type: boolean
  inputBinding:
    prefix: --use-presigned-url-s3
- id: use_pre_signed_url_gcs
  doc: Generate presigned URLS for files on gs://. --gcp- private-key must be provided.
  type: boolean
  inputBinding:
    prefix: --use-presigned-url-gcs
- id: gcp_private_key
  doc: Private key file (JSON/PKCS12) of a service account on Google Cloud Platform
    (GCP). This key will be used to make presigned URLs on files on gs://.
  type: string
  inputBinding:
    prefix: --gcp-private-key
- id: duration_pre_signed_url_s3
  doc: Duration for presigned URLs for files on s3:// in seconds.
  type: string
  inputBinding:
    prefix: --duration-presigned-url-s3
- id: duration_pre_signed_url_gcs
  doc: Duration for presigned URLs for files on gs:// in seconds.
  type: string
  inputBinding:
    prefix: --duration-presigned-url-gcs
- id: tsv_mapping_path_to_url
  doc: A 2-column TSV file with local path prefix and corresponding URL prefix. For
    example, using 1-line 2-col TSV file with /var/www[TAB]http://my.server.com will
    replace a local path /var/www/here/a.txt to a URL http://my.server.com/here/a.txt.
  type: string
  inputBinding:
    prefix: --tsv-mapping-path-to-url
- id: out_dir
  doc: Output directory/bucket (LOCAL OR REMOTE). This can be a local path, gs://
    or s3://.
  type: string
  inputBinding:
    prefix: --out-dir
- id: tmp_dir
  doc: LOCAL temporary cache directory. All temporary files for auto-inter-storage
    transfer will be stored here. You can clean it up but will lose all cached files
    so that remote files will be re-downloaded.
  type: string
  inputBinding:
    prefix: --tmp-dir
- id: use_gs_util_for_s3
  doc: Use gsutil for direct tranfer between GCS and S3 buckets. Make sure that you
    have "gsutil" installed and configured to have access to credentials for GCS and
    S3 (e.g. ~/.boto or ~/.aws/credientials)
  type: boolean
  inputBinding:
    prefix: --use-gsutil-for-s3
- id: no_checksum
  doc: Always overwrite on output directory/bucket (--out- dir) even if md5-identical
    files (or soft links) already exist there. Md5 hash/filename/filesize checking
    will be skipped.
  type: boolean
  inputBinding:
    prefix: --no-checksum
- id: debug
  doc: Prints all logs >= DEBUG level
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- croo
