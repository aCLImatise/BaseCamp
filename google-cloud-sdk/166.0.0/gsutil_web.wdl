version 1.0

task GsutilWeb {
  input {
    String mM
    String eE
    String? setSet
    String? bucketBucketUrl
  }
  command <<<
    gsutil web \
      ~{setSet} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{bucketBucketUrl}
  >>>
}