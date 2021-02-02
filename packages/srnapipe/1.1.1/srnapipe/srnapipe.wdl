version 1.0

task Srnapipe {
  input {
    File? fast_q
    String? fast_q_n
    File? ref
    File? transcripts
    File? te
    File? mirnas
    File? snrnas
    File? rrnas
    File? trnas
    Boolean? html
    Boolean? dir
    Int? min
    Int? max
    Int? si_min
    Int? si_max
    Int? pi_min
    Int? pi_max
    Int? mis
    Int? mist_e
    String? ppp_on
    Int? threads
  }
  command <<<
    srnapipe \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(fast_q_n) then ("--fastq_n " +  '"' + fast_q_n + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(transcripts) then ("--transcripts " +  '"' + transcripts + '"') else ""} \
      ~{if defined(te) then ("--TE " +  '"' + te + '"') else ""} \
      ~{if defined(mirnas) then ("--miRNAs " +  '"' + mirnas + '"') else ""} \
      ~{if defined(snrnas) then ("--snRNAs " +  '"' + snrnas + '"') else ""} \
      ~{if defined(rrnas) then ("--rRNAs " +  '"' + rrnas + '"') else ""} \
      ~{if defined(trnas) then ("--tRNAs " +  '"' + trnas + '"') else ""} \
      ~{if (html) then "--html" else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(si_min) then ("--si_min " +  '"' + si_min + '"') else ""} \
      ~{if defined(si_max) then ("--si_max " +  '"' + si_max + '"') else ""} \
      ~{if defined(pi_min) then ("--pi_min " +  '"' + pi_min + '"') else ""} \
      ~{if defined(pi_max) then ("--pi_max " +  '"' + pi_max + '"') else ""} \
      ~{if defined(mis) then ("--mis " +  '"' + mis + '"') else ""} \
      ~{if defined(mist_e) then ("--misTE " +  '"' + mist_e + '"') else ""} \
      ~{if defined(ppp_on) then ("--PPPon " +  '"' + ppp_on + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    fast_q: "Fastq file to process"
    fast_q_n: "Name of the content to process"
    ref: "Fasta file containing the reference genome"
    transcripts: "Fasta file containing the transcripts"
    te: "Fasta file containing the transposable elements"
    mirnas: "Fasta file containing the miRNAs"
    snrnas: "Fasta file containing the snRNAs"
    rrnas: "Fasta file containing the rRNAs"
    trnas: "Fasta file containing the tRNAs"
    html: "Main HTML file where results will be displayed"
    dir: "Folder where results will be stored"
    min: "Minimum read size (default: 18)"
    max: "Maximum read size (default: 29)"
    si_min: "Lower bound of siRNA range (default: 21)"
    si_max: "Higher bound of siRNA range (default: 21)"
    pi_min: "Lower bound of piRNA range (default: 23)"
    pi_max: "Higher bound of piRNA range (default: 29)"
    mis: "Maximal genome mismatches (default: 0)"
    mist_e: "Maximal TE mismatches (default: 3)"
    ppp_on: "Ping-pong partners (default: true)"
    threads: "Number of threads used (default: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}