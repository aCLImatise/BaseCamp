version 1.0

task FaSomeRecords {
  input {
    String excludeExclude
    String? inInFa
    String? listListFile
    String? outOutFa
  }
  command <<<
    faSomeRecords \
      ~{inInFa} \
      ~{if defined(excludeExclude) then ("-exclude " +  '"' + excludeExclude + '"') else ""} \
      ~{listListFile} \
      ~{outOutFa}
  >>>
}