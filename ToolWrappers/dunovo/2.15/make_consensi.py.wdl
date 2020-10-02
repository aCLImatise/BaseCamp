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
    Boolean? quiet
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
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(queue_size) then ("--queue-size " +  '"' + queue_size + '"') else ""}
  >>>
  parameter_meta {
    dcs_one: "The file to output the first mates of the\\nduplex consensus sequences into. Warning: This\\nwill be overwritten if it exists!"
    dcs_two: "Same, but for mate 2."
    sscs_one: "Save the single-strand consensus sequences\\n(mate 1) in this file (FASTA format). Warning:\\nThis will be overwritten if it exists!"
    sscs_two: "Save the single-strand consensus sequences\\n(mate 2) in this file (FASTA format). Warning:\\nThis will be overwritten if it exists!"
    qual_format: "FASTQ quality score format. Sanger scores are\\nassumed to begin at '33' (!). Default:\\nsanger."
    fast_q_out: "Output in FASTQ instead of FASTA. You must\\nspecify the quality score to give to all\\nbases. There is no meaningful quality score we\\ncan automatically give, so you will have to\\nspecify an artificial one. A good choice is\\n40, the maximum score normally output by\\nsequencers."
    min_reads: "The minimum number of reads (from each strand)\\nrequired to form a single-strand consensus.\\nStrands with fewer reads will be skipped.\\nDefault: 3."
    qual: "Base quality threshold. Bases below this\\nquality will not be counted. Default:\\n20."
    cons_th_res: "The fractional threshold to use when making\\nconsensus sequences. The consensus base must\\nbe present in more than this fraction of the\\nreads, or N will be used as the consensus base\\ninstead. Default: 0.5"
    min_cons_reads: "The absolute threshold to use when making\\nconsensus sequences. The consensus base must\\nbe present in more than this number of reads,\\nor N will be used as the consensus base\\ninstead. Default: 0"
    phone_home: "Report helpful usage data to the developer, to\\nbetter understand the use cases and\\nperformance of the tool. The only data which\\nwill be recorded is the name and version of\\nthe tool, the size of the input data, the time\\nand memory taken to process it, and the IP\\naddress of the machine running it. Also, if\\nthe script fails, it will report the name of\\nthe exception thrown and the line of code it\\noccurred in. No filenames are sent, and the\\nonly parameters reported are the number of\\n--processes and the --queue-size. All the\\nreporting and recording code is available at\\nhttps://github.com/NickSto/ET."
    galaxy: "Tell the script it's running on Galaxy.\\nCurrently this only affects data reported when\\nphoning home."
    test: "If reporting usage data, mark this as a test\\nrun."
    log: "Print log messages to this file instead of to\\nstderr. Warning: Will overwrite the file."
    quiet: "-V, --verbose\\n-D, --debug"
    processes: "Number of worker subprocesses to use. If 0, no\\nsubprocesses will be started and everything\\nwill be done inside one process. Give \\\"auto\\\"\\nto use as many processes as there are CPU\\ncores. Default: 0."
    queue_size: "How long to go accumulating responses from\\nworker subprocesses before dealing with all of\\nthem. Default: 8 * the number of worker\\n--processes."
    families_dot_msa_dot_tsv: "The output of align_families.py. 6 columns:\\n1. (canonical) barcode\\n2. order (\\\"ab\\\" or \\\"ba\\\")\\n3. mate (\\\"1\\\" or \\\"2\\\")\\n4. read name\\n5. aligned sequence\\n6. aligned quality scores."
  }
  output {
    File out_stdout = stdout()
    File out_dcs_one = "${in_dcs_one}"
  }
}