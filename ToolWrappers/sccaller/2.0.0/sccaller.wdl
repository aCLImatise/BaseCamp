version 1.0

task Sccaller {
  input {
    Boolean? bam
    Boolean? fast_a
    File? output_file_name
    Boolean? snp_in
    Boolean? snp_type
    Boolean? rd
    Boolean? bias
    Boolean? bulk
    Boolean? bulk_min_depth
    Boolean? bulk_min_mapq
    Boolean? bulk_min_var
    File? format
    Boolean? head
    Boolean? mapq
    Boolean? min_depth
    Boolean? min_var
    Boolean? null
    Boolean? tail
    Boolean? wk_dir
    Boolean? engine
    Boolean? lamb
    Boolean? cpu_num
    Boolean? work_num
  }
  command <<<
    sccaller \
      ~{if (bam) then "--bam" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (output_file_name) then "--output" else ""} \
      ~{if (snp_in) then "--snp_in" else ""} \
      ~{if (snp_type) then "--snp_type" else ""} \
      ~{if (rd) then "--RD" else ""} \
      ~{if (bias) then "--bias" else ""} \
      ~{if (bulk) then "--bulk" else ""} \
      ~{if (bulk_min_depth) then "--bulk_min_depth" else ""} \
      ~{if (bulk_min_mapq) then "--bulk_min_mapq" else ""} \
      ~{if (bulk_min_var) then "--bulk_min_var" else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (head) then "--head" else ""} \
      ~{if (mapq) then "--mapq" else ""} \
      ~{if (min_depth) then "--min_depth" else ""} \
      ~{if (min_var) then "--minvar" else ""} \
      ~{if (null) then "--null" else ""} \
      ~{if (tail) then "--tail" else ""} \
      ~{if (wk_dir) then "--wkdir" else ""} \
      ~{if (engine) then "--engine" else ""} \
      ~{if (lamb) then "--lamb" else ""} \
      ~{if (cpu_num) then "--cpu_num" else ""} \
      ~{if (work_num) then "--work_num" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: ":      bamfile of a single cell"
    fast_a: ":    fasta file of reference genome"
    output_file_name: ":   output file name"
    snp_in: ":   Candidate snp input file, either from dbsnp data or heterozygous snp (hsnp) data of the bulk, for known heterogous call. file type: bed (1-based) or vcf."
    snp_type: ": SNP type for --snp_in. It could be either \\\"dbsnp\\\" or \\\"hsnp\\\". When choosing dbsnp, --bulk bulk_bamfile is required."
    rd: ":           min. read depth of known heterogous SNP called from bulk when choosing -t dbsnp. Default: 20. Recommand: 10,15,20, depending on average read depth"
    bias: ":         default theta (bias) for SNVs whose theta cannot be estimated. Default=0.75"
    bulk: ":         bamfile of bulk DNA sequencing"
    bulk_min_depth: ":min. reads for bulk. Default: 20"
    bulk_min_mapq: ":min. mapQ for bulk. Default: 20"
    bulk_min_var: ": min. num. variant supporting reads for bulk. Default: 1"
    format: ":       output file format. bed or vcf. Default: vcf"
    head: ":         first chromosome as sorted as in fasta file to analyze (1-based). Default: the first chr. in the fasta"
    mapq: ":         min. mapQ. Default: 40"
    min_depth: ":    min. reads. Default: 10"
    min_var: ":       min. num. variant supporting reads. Default: 4"
    null: ":         min. allelic fraction considered. Default=0.03"
    tail: ":         last chromosome as sorted as in fasta file to analyze (1-based). Default: the last chr. in the fasta"
    wk_dir: ":    work dir. Default: ./"
    engine: ":   pileup engine. samtools or pysam. Default: pysam"
    lamb: ":     lambda for bias estimation. Default=10000"
    cpu_num: ":  num. processes. Default: 1"
    work_num: ": num. splits per chromosome for multi-process computing. Default: 100"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
    File out_format = "${in_format}"
  }
}