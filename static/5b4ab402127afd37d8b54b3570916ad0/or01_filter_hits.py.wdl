version 1.0

task Or01FilterHitspy {
  input {
    String f_blast_file
    String outfile
    String hit_num
    String coverage
    String database
    String type
  }
  command <<<
    or01_filter_hits_py \
      ~{f_blast_file} \
      ~{outfile} \
      ~{hit_num} \
      ~{coverage} \
      ~{database} \
      ~{type}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    f_blast_file: "First BLAST results file with columns: qseqid, sseqid, pident,\\nlength, mismatch, gapopen, qstart, qend, sstart, send, evalue,\\nbitscore, gaps, qcovs, qcovhsp, qlen, slen"
    outfile: "Name of output"
    hit_num: "Integer, Number of hits to include"
    coverage: "Integer, Coverage of alignment (percentage)"
    database: "Name of SQLite3 database"
    type: "Type of data; nucl or prot"
  }
  output {
    File out_stdout = stdout()
  }
}