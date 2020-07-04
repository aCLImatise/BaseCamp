version 1.0

task Croo {
  input {
    String? out_def_json
    String? method
    String? ucsc_genome_db
    String? ucsc_genome_pos
    Boolean? public_gcs
    Boolean? use_pre_signed_url_s_three
    Boolean? use_pre_signed_url_gcs
    String? gcp_private_key
    String? duration_pre_signed_url_s_three
    String? duration_pre_signed_url_gcs
    String? tsv_mapping_path_to_url
    String? out_dir
    String? tmp_dir
    Boolean? use_gs_util_for_s_three
    Boolean? no_checksum
    Boolean? debug
    String metadata_json
  }
  command <<<
    croo \
      ~{metadata_json} \
      ~{if defined(out_def_json) then ("--out-def-json " +  '"' + out_def_json + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(ucsc_genome_db) then ("--ucsc-genome-db " +  '"' + ucsc_genome_db + '"') else ""} \
      ~{if defined(ucsc_genome_pos) then ("--ucsc-genome-pos " +  '"' + ucsc_genome_pos + '"') else ""} \
      ~{true="--public-gcs" false="" public_gcs} \
      ~{true="--use-presigned-url-s3" false="" use_pre_signed_url_s_three} \
      ~{true="--use-presigned-url-gcs" false="" use_pre_signed_url_gcs} \
      ~{if defined(gcp_private_key) then ("--gcp-private-key " +  '"' + gcp_private_key + '"') else ""} \
      ~{if defined(duration_pre_signed_url_s_three) then ("--duration-presigned-url-s3 " +  '"' + duration_pre_signed_url_s_three + '"') else ""} \
      ~{if defined(duration_pre_signed_url_gcs) then ("--duration-presigned-url-gcs " +  '"' + duration_pre_signed_url_gcs + '"') else ""} \
      ~{if defined(tsv_mapping_path_to_url) then ("--tsv-mapping-path-to-url " +  '"' + tsv_mapping_path_to_url + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{true="--use-gsutil-for-s3" false="" use_gs_util_for_s_three} \
      ~{true="--no-checksum" false="" no_checksum} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    out_def_json: "Output definition JSON file for a WDL file corresponding to the specified metadata.json file"
    method: "Method to localize files on output directory/bucket. \"link\" means a soft-linking and it's for local directory only. Original output files will be kept in Cromwell's output directory. \"copy\" makes copies of Cromwell's original outputs"
    ucsc_genome_db: "UCSC genome browser's \"db=\" parameter. (e.g. hg38 for GRCh38 and mm10 for mm10)"
    ucsc_genome_pos: "UCSC genome browser's \"position=\" parameter. (e.g. chr1:35000-40000)"
    public_gcs: "Your GCS (gs://) bucket is public."
    use_pre_signed_url_s_three: "Generate presigned URLS for files on s3://."
    use_pre_signed_url_gcs: "Generate presigned URLS for files on gs://. --gcp- private-key must be provided."
    gcp_private_key: "Private key file (JSON/PKCS12) of a service account on Google Cloud Platform (GCP). This key will be used to make presigned URLs on files on gs://."
    duration_pre_signed_url_s_three: "Duration for presigned URLs for files on s3:// in seconds."
    duration_pre_signed_url_gcs: "Duration for presigned URLs for files on gs:// in seconds."
    tsv_mapping_path_to_url: "A 2-column TSV file with local path prefix and corresponding URL prefix. For example, using 1-line 2-col TSV file with /var/www[TAB]http://my.server.com will replace a local path /var/www/here/a.txt to a URL http://my.server.com/here/a.txt."
    out_dir: "Output directory/bucket (LOCAL OR REMOTE). This can be a local path, gs:// or s3://."
    tmp_dir: "LOCAL temporary cache directory. All temporary files for auto-inter-storage transfer will be stored here. You can clean it up but will lose all cached files so that remote files will be re-downloaded."
    use_gs_util_for_s_three: "Use gsutil for direct tranfer between GCS and S3 buckets. Make sure that you have \"gsutil\" installed and configured to have access to credentials for GCS and S3 (e.g. ~/.boto or ~/.aws/credientials)"
    no_checksum: "Always overwrite on output directory/bucket (--out- dir) even if md5-identical files (or soft links) already exist there. Md5 hash/filename/filesize checking will be skipped."
    debug: "Prints all logs >= DEBUG level"
    metadata_json: "Path, URL or URI for metadata.json for a workflow Example: /scratch/sample1/metadata.json, gs://some/where/metadata.json, http://hello.com/world/metadata.json"
  }
}