version 1.0

task PurgeHaplotigsPlace {
  input {
    Boolean? primary
    Boolean? out
    Boolean? threads
    Boolean? coverage
    Boolean? falcon_naming
    String? h
  }
  command <<<
    purge_haplotigs place \
      ~{if (primary) then "-primary" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (threads) then "-threads" else ""} \
      ~{if (coverage) then "-coverage" else ""} \
      ~{if (falcon_naming) then "-falconNaming" else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    primary: "Primary contigs fasta file"
    out: "Placement file name. DEFAULT = ncbi_placements.tsv"
    threads: "Threads for Minimap2. DEFAULT = 4"
    coverage: "Coverage cutoff percentage for pairing contigs.\\nDEFAULT = 50 (%)"
    falcon_naming: "Rename contigs in the style used by FALCON Unzip. Saved\\nto <in-prefix>.FALC.fasta\\n"
    h: ""
  }
  output {
    File out_stdout = stdout()
  }
}