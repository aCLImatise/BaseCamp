version 1.0

task EmirgeMakedbpy {
  input {
    Boolean? build_database_gene
    Int? threads
    Directory? tmpdir
    Int? release
    Int? min_len
    Int? max_len
    Float? id
    Boolean? keep
    File? v_search
    File? bowtie_build
    Boolean? silva_license_accepted
  }
  command <<<
    emirge_makedb_py \
      ~{if (build_database_gene) then "-g" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_len) then ("--max-len " +  '"' + max_len + '"') else ""} \
      ~{if defined(id) then ("--id " +  '"' + id + '"') else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if defined(v_search) then ("--vsearch " +  '"' + v_search + '"') else ""} \
      ~{if defined(bowtie_build) then ("--bowtie-build " +  '"' + bowtie_build + '"') else ""} \
      ~{if (silva_license_accepted) then "--silva-license-accepted" else ""}
  >>>
  parameter_meta {
    build_database_gene: "[SSU|LSU], --gene=[SSU|LSU]\\nbuild database from this gene (SSU=Small Subunit rRNA;\\nLSU=Large Subunit rRNA) default = SSU"
    threads: "number of threads to use for vsearch clustering of\\ndatabase (default = use all available)"
    tmpdir: "working directory for temporary files (default = /tmp)"
    release: "SILVA release number (default: current SILVA release)"
    min_len: "minimum reference sequence length (default = 1200)"
    max_len: "maximum reference sequence length (default = 2000)"
    id: "Cluster at this fractional identity level (default =\\n0.97)"
    keep: "keep intermediary files (default: do not keep)"
    v_search: "path to vsearch binary (default: look in $PATH)"
    bowtie_build: "path to bowtie-build binary (default: look in $PATH)"
    silva_license_accepted: "I have read and accepted the SILVA license.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}