version 1.0

task Makeconsensipy {
  input {
    File? dcs_one
    Int? dcs_two
    Int? sscs_one
    Int? sscs_two
    String? qual_format
    Int? fast_q_out
    Int? min_reads
    Int? qual
    Float? cons_th_res
    Int? min_cons_reads
    Boolean? phone_home
    Boolean? galaxy
    Boolean? test
    File? log
    Int? processes
    Int? queue_size
    String families_dot_msa_dot_tsv
  }
  command <<<
    make_consensi_py \
      ~{families_dot_msa_dot_tsv} \
      ~{if defined(dcs_one) then ("--dcs1 " +  '"' + dcs_one + '"') else ""} \
      ~{if defined(dcs_two) then ("--dcs2 " +  '"' + dcs_two + '"') else ""} \
      ~{if defined(sscs_one) then ("--sscs1 " +  '"' + sscs_one + '"') else ""} \
      ~{if defined(sscs_two) then ("--sscs2 " +  '"' + sscs_two + '"') else ""} \
      ~{if defined(qual_format) then ("--qual-format " +  '"' + qual_format + '"') else ""} \
      ~{if defined(fast_q_out) then ("--fastq-out " +  '"' + fast_q_out + '"') else ""} \
      ~{if defined(min_reads) then ("--min-reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(qual) then ("--qual " +  '"' + qual + '"') else ""} \
      ~{if defined(cons_th_res) then ("--cons-thres " +  '"' + cons_th_res + '"') else ""} \
      ~{if defined(min_cons_reads) then ("--min-cons-reads " +  '"' + min_cons_reads + '"') else ""} \
      ~{if (phone_home) then "--phone-home" else ""} \
      ~{if (galaxy) then "--galaxy" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(queue_size) then ("--queue-size " +  '"' + queue_size + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0"
  }
  parameter_meta {
    dcs_one: "The file to output the first mates of the duplex consensus sequences into. Warning: This will be overwritten if it exists!"
    dcs_two: "Same, but for mate 2."
    sscs_one: "Save the single-strand consensus sequences (mate 1) in this file (FASTA format). Warning: This will be overwritten if it exists!"
    sscs_two: "Save the single-strand consensus sequences (mate 2) in this file (FASTA format). Warning: This will be overwritten if it exists!"
    qual_format: "FASTQ quality score format. Sanger scores are assumed to begin at '33' (!). Default: sanger."
    fast_q_out: "Output in FASTQ instead of FASTA. You must specify the quality score to give to all bases. There is no meaningful quality score we can automatically give, so you will have to specify an artificial one. A good choice is 40, the maximum score normally output by sequencers."
    min_reads: "The minimum number of reads (from each strand) required to form a single-strand consensus. Strands with fewer reads will be skipped. Default: 3."
    qual: "Base quality threshold. Bases below this quality will not be counted. Default: 20."
    cons_th_res: "The fractional threshold to use when making consensus sequences. The consensus base must be present in more than this fraction of the reads, or N will be used as the consensus base instead. Default: 0.5"
    min_cons_reads: "The absolute threshold to use when making consensus sequences. The consensus base must be present in more than this number of reads, or N will be used as the consensus base instead. Default: 0"
    phone_home: "Report helpful usage data to the developer, to better understand the use cases and performance of the tool. The only data which will be recorded is the name and version of the tool, the size of the input data, the time and memory taken to process it, and the IP address of the machine running it. Also, if the script fails, it will report the name of the exception thrown and the line of code it occurred in. No filenames are sent, and the only parameters reported are the number of --processes and the --queue-size. All the reporting and recording code is available at https://github.com/NickSto/ET."
    galaxy: "Tell the script it's running on Galaxy. Currently this only affects data reported when phoning home."
    test: "If reporting usage data, mark this as a test run."
    log: "Print log messages to this file instead of to stderr. Warning: Will overwrite the file."
    processes: "Number of worker subprocesses to use. If 0, no subprocesses will be started and everything will be done inside one process. Give \\\"auto\\\" to use as many processes as there are CPU cores. Default: 0."
    queue_size: "How long to go accumulating responses from worker subprocesses before dealing with all of them. Default: 8 * the number of worker --processes."
    families_dot_msa_dot_tsv: "The output of align_families.py. 6 columns:\\n1. (canonical) barcode\\n2. order (\\\"ab\\\" or \\\"ba\\\")\\n3. mate (\\\"1\\\" or \\\"2\\\")\\n4. read name\\n5. aligned sequence\\n6. aligned quality scores."
  }
  output {
    File out_stdout = stdout()
    File out_dcs_one = "${in_dcs_one}"
  }
}