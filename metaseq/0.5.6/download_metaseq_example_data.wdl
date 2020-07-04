version 1.0

task DownloadMetaseqExampleData.py {
  input {
    String? data_dir
    String downloads
    String data
    String from
    String ucsc
  }
  command <<<
    download_metaseq_example_data.py \
      ~{downloads} \
      ~{data} \
      ~{from} \
      ~{ucsc} \
      ~{if defined(data_dir) then ("--data-dir " +  '"' + data_dir + '"') else ""}
  >>>
  parameter_meta {
    data_dir: "Location to store downloaded and prepped data. Default is /tmp/tmpot432_h7/lib/python2.7/site- packages/metaseq/test/data"
    downloads: ""
    data: ""
    from: ""
    ucsc: ""
  }
}