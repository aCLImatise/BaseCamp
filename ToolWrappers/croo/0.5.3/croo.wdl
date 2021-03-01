version 1.0

task Croo {
  input {
    File? out_def_json
    Directory? method
    Int? ucsc_genome_db
    Int? ucsc_genome_pos
    Boolean? public_gcs
    Boolean? use_pre_signed_url_s_three
    Boolean? use_pre_signed_url_gcs
    File? gcp_private_key
    Int? duration_pre_signed_url_s_three
    String? duration_pre_signed_url_gcs
    File? tsv_mapping_path_to_url
    File? out_dir
    Directory? tmp_dir
    Boolean? use_gs_util_for_s_three
    File? no_checksum
    Boolean? debug
  }
  command <<<
    croo \
      ~{if defined(out_def_json) then ("--out-def-json " +  '"' + out_def_json + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(ucsc_genome_db) then ("--ucsc-genome-db " +  '"' + ucsc_genome_db + '"') else ""} \
      ~{if defined(ucsc_genome_pos) then ("--ucsc-genome-pos " +  '"' + ucsc_genome_pos + '"') else ""} \
      ~{if (public_gcs) then "--public-gcs" else ""} \
      ~{if (use_pre_signed_url_s_three) then "--use-presigned-url-s3" else ""} \
      ~{if (use_pre_signed_url_gcs) then "--use-presigned-url-gcs" else ""} \
      ~{if defined(gcp_private_key) then ("--gcp-private-key " +  '"' + gcp_private_key + '"') else ""} \
      ~{if defined(duration_pre_signed_url_s_three) then ("--duration-presigned-url-s3 " +  '"' + duration_pre_signed_url_s_three + '"') else ""} \
      ~{if defined(duration_pre_signed_url_gcs) then ("--duration-presigned-url-gcs " +  '"' + duration_pre_signed_url_gcs + '"') else ""} \
      ~{if defined(tsv_mapping_path_to_url) then ("--tsv-mapping-path-to-url " +  '"' + tsv_mapping_path_to_url + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if (use_gs_util_for_s_three) then "--use-gsutil-for-s3" else ""} \
      ~{if (no_checksum) then "--no-checksum" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/croo:0.5.3--py_0"
  }
  parameter_meta {
    out_def_json: "Output definition JSON file for a WDL file\\ncorresponding to the specified metadata.json file"
    method: "Method to localize files on output directory/bucket.\\n\\\"link\\\" means a soft-linking and it's for local\\ndirectory only. Original output files will be kept in\\nCromwell's output directory. \\\"copy\\\" makes copies of\\nCromwell's original outputs"
    ucsc_genome_db: "UCSC genome browser's \\\"db=\\\" parameter. (e.g. hg38 for\\nGRCh38 and mm10 for mm10)"
    ucsc_genome_pos: "UCSC genome browser's \\\"position=\\\" parameter. (e.g.\\nchr1:35000-40000)"
    public_gcs: "Your GCS (gs://) bucket is public."
    use_pre_signed_url_s_three: "Generate presigned URLS for files on s3://."
    use_pre_signed_url_gcs: "Generate presigned URLS for files on gs://. --gcp-\\nprivate-key must be provided."
    gcp_private_key: "Private key file (JSON/PKCS12) of a service account on\\nGoogle Cloud Platform (GCP). This key will be used to\\nmake presigned URLs on files on gs://."
    duration_pre_signed_url_s_three: "Duration for presigned URLs for files on s3:// in\\nseconds."
    duration_pre_signed_url_gcs: "Duration for presigned URLs for files on gs:// in\\nseconds."
    tsv_mapping_path_to_url: "A 2-column TSV file with local path prefix and\\ncorresponding URL prefix. For example, using 1-line\\n2-col TSV file with /var/www[TAB]http://my.server.com\\nwill replace a local path /var/www/here/a.txt to a URL\\nhttp://my.server.com/here/a.txt."
    out_dir: "Output directory/bucket (LOCAL OR REMOTE). This can be\\na local path, gs:// or s3://."
    tmp_dir: "LOCAL temporary cache directory. All temporary files\\nfor auto-inter-storage transfer will be stored here.\\nYou can clean it up but will lose all cached files so\\nthat remote files will be re-downloaded."
    use_gs_util_for_s_three: "Use gsutil for direct tranfer between GCS and S3\\nbuckets. Make sure that you have \\\"gsutil\\\" installed\\nand configured to have access to credentials for GCS\\nand S3 (e.g. ~/.boto or ~/.aws/credientials)"
    no_checksum: "Always overwrite on output directory/bucket (--out-\\ndir) even if md5-identical files (or soft links)\\nalready exist there. Md5 hash/filename/filesize\\nchecking will be skipped."
    debug: "Prints all logs >= DEBUG level"
  }
  output {
    File out_stdout = stdout()
    File out_out_def_json = "${in_out_def_json}"
    Directory out_method = "${in_method}"
    File out_out_dir = "${in_out_dir}"
    File out_no_checksum = "${in_no_checksum}"
  }
}