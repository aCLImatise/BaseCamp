version 1.0

task Nanovar {
  input {
    String? data_type
    File? filter_bed
    Int? min_cov
    Int? min_len
    Float? split_pct
    Int? min_align
    Int? buffer
    Float? score
    Float? homo
    Float? hetero
    Boolean? debug
    Boolean? force
    Boolean? quiet
    Int? threads
    File? model
    File? mm
    File? st
    File? mdb
    File? wmk
    File? hsb
  }
  command <<<
    nanovar \
      ~{if defined(data_type) then ("--data_type " +  '"' + data_type + '"') else ""} \
      ~{if defined(filter_bed) then ("--filter_bed " +  '"' + filter_bed + '"') else ""} \
      ~{if defined(min_cov) then ("--mincov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(split_pct) then ("--splitpct " +  '"' + split_pct + '"') else ""} \
      ~{if defined(min_align) then ("--minalign " +  '"' + min_align + '"') else ""} \
      ~{if defined(buffer) then ("--buffer " +  '"' + buffer + '"') else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{if defined(homo) then ("--homo " +  '"' + homo + '"') else ""} \
      ~{if defined(hetero) then ("--hetero " +  '"' + hetero + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(mm) then ("--mm " +  '"' + mm + '"') else ""} \
      ~{if defined(st) then ("--st " +  '"' + st + '"') else ""} \
      ~{if defined(mdb) then ("--mdb " +  '"' + mdb + '"') else ""} \
      ~{if defined(wmk) then ("--wmk " +  '"' + wmk + '"') else ""} \
      ~{if defined(hsb) then ("--hsb " +  '"' + hsb + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data_type: "type of long-read data [ont]\\nont - Oxford Nanopore Technologies\\npacbio-clr - Pacific Biosciences CLR\\npacbio-ccs - Pacific Biosciences CCS"
    filter_bed: "BED file with genomic regions to be excluded [None]\\n(e.g. telomeres and centromeres) Either specify name of in-built\\nreference genome filter (i.e. hg38, hg19, mm10) or provide full\\npath to own BED file."
    min_cov: "minimum number of reads required to call a breakend [2]"
    min_len: "minimum length of SV to be detected [25]"
    split_pct: "minimum percentage of unmapped bases within a long read\\nto be considered as a split-read. 0.05<=p<=0.50 [0.05]"
    min_align: "minimum alignment length for single alignment reads [200]"
    buffer: "nucleotide length buffer for SV breakend clustering [50]"
    score: "score threshold for defining PASS/FAIL SVs in VCF [1.0]\\nDefault score 1.0 was estimated from simulated analysis."
    homo: "lower limit of a breakend read ratio to classify a homozygous state [0.75]\\n(i.e. Any breakend with homo<=ratio<=1.00 is classified as homozygous)"
    hetero: "lower limit of a breakend read ratio to classify a heterozygous state [0.35]\\n(i.e. Any breakend with hetero<=ratio<homo is classified as heterozygous)"
    debug: "run in debug mode"
    force: "run full pipeline (i.e. do not skip index generation)"
    quiet: "hide verbose"
    threads: "number of available threads for use [1]"
    model: "specify path to custom-built model"
    mm: "specify path to 'minimap2' executable"
    st: "specify path to 'samtools' executable"
    mdb: "specify path to 'makeblastdb' executable"
    wmk: "specify path to 'windowmasker' executable"
    hsb: "specify path to 'hs-blastn' executable"
  }
  output {
    File out_stdout = stdout()
  }
}