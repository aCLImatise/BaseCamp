version 1.0

task PubmlstDownload {
  input {
    String? scheme_name
    String? scheme_id
    Directory? outdir
    String? base_url
  }
  command <<<
    pubmlst_download \
      ~{if defined(scheme_name) then ("--scheme_name " +  '"' + scheme_name + '"') else ""} \
      ~{if defined(scheme_id) then ("--scheme_id " +  '"' + scheme_id + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(base_url) then ("--base-url " +  '"' + base_url + '"') else ""}
  >>>
  parameter_meta {
    scheme_name: "scheme name"
    scheme_id: "scheme id"
    outdir: "output directory"
    base_url: "Base URL for the API. Suggested values are:\\nhttp://rest.pubmlst.org/db (default),\\nhttps://bigsdb.pasteur.fr/api/db\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}