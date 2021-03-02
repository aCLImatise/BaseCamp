version 1.0

task HaystacConfig {
  input {
    File? cache
    Boolean? clear_cache
    Int? api_key
    Boolean? use_cond_a
  }
  command <<<
    haystac config \
      ~{if defined(cache) then ("--cache " +  '"' + cache + '"') else ""} \
      ~{if (clear_cache) then "--clear-cache" else ""} \
      ~{if defined(api_key) then ("--api-key " +  '"' + api_key + '"') else ""} \
      ~{if defined(use_cond_a) then ("--use-conda " +  '"' + use_cond_a + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/haystac:0.3.2--py36_0"
  }
  parameter_meta {
    cache: "Cache folder for storing genomes downloaded from NCBI\\nand other shared data (default: /root/haystac/cache)"
    clear_cache: "Clear the contents of the cache folder, and delete the\\nfolder itself (default: False)"
    api_key: "Personal NCBI API key (increases max concurrent requests\\nfrom 3 to 10,\\nhttps://www.ncbi.nlm.nih.gov/account/register/)"
    use_cond_a: "Use conda as a package manger (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}