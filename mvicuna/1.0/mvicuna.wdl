version 1.0

task Mvicuna {
  input {
    Boolean? i_pfq
    Boolean? is_fq
    Boolean? fa
    Boolean? op_fq
    File? osf_q
    Boolean? batch
    Boolean? w_two
    Boolean? lc_mono
    Boolean? tasks
    Boolean? silent
    Boolean? no_clean
    Boolean? drm_op
    Boolean? drm_perc_sim
    Boolean? drm_max_mismatch
    Boolean? prm_op
    Boolean? prm_os
    Boolean? trm_ve_cfa
    Boolean? trm_op
    Boolean? trm_os
    Boolean? trm_min_match
    Boolean? trm_min_rlen
    Boolean? trm_q
    Boolean? fe_k
  }
  command <<<
    mvicuna \
      ~{if (i_pfq) then "-ipfq" else ""} \
      ~{if (is_fq) then "-isfq" else ""} \
      ~{if (fa) then "-fa" else ""} \
      ~{if (op_fq) then "-opfq" else ""} \
      ~{if (osf_q) then "-osfq" else ""} \
      ~{if (batch) then "-batch" else ""} \
      ~{if (w_two) then "-w2" else ""} \
      ~{if (lc_mono) then "-lc_mono" else ""} \
      ~{if (tasks) then "-tasks" else ""} \
      ~{if (silent) then "-silent" else ""} \
      ~{if (no_clean) then "-noclean" else ""} \
      ~{if (drm_op) then "-drm_op" else ""} \
      ~{if (drm_perc_sim) then "-drm_perc_sim" else ""} \
      ~{if (drm_max_mismatch) then "-drm_max_mismatch" else ""} \
      ~{if (prm_op) then "-prm_op" else ""} \
      ~{if (prm_os) then "-prm_os" else ""} \
      ~{if (trm_ve_cfa) then "-trm_vecfa" else ""} \
      ~{if (trm_op) then "-trm_op" else ""} \
      ~{if (trm_os) then "-trm_os" else ""} \
      ~{if (trm_min_match) then "-trm_min_match" else ""} \
      ~{if (trm_min_rlen) then "-trm_min_rlen" else ""} \
      ~{if (trm_q) then "-trm_q" else ""} \
      ~{if (fe_k) then "-fe_k" else ""}
  >>>
  parameter_meta {
    i_pfq: ": comma separated input paired fastq files; the ith and (i+1)th files form a pair (i is an odd number)"
    is_fq: ": comma separated input single end fastq files"
    fa: ": comma separated input single end fasta files"
    op_fq: ": comma separated final 2 output fastq paired files"
    osf_q: ": final output singleton fastq file"
    batch: ": default 500000; number of sequence (pairs) to be loaded in the memory (>=10000)-pthreads: default 8; number of cores to use"
    w_two: ": default 17, 5; sketching window sizes"
    lc_mono: ": default 30, 50, 80; defining low complexity sequence\\nmax percentage of ambiguous bases, mono nucleotides, and dinucleotides"
    tasks: ": default DupRm,Trim,PairedReadMerge,SFrqEst;\\na list of comma separated tasks {DupRm, Trim, PairedReadMerge, SFrqEst}"
    silent: ": default false; no screen print-out"
    no_clean: ": default false; do not remove intermediate files"
    drm_op: ": comma separated output paired fq files post dup rm"
    drm_perc_sim: ": default 98; percent similarity"
    drm_max_mismatch: ": default 5; max mismatches allowed"
    prm_op: ": 2 comma separated output unmerged fq files"
    prm_os: ": merged single-end fq file"
    trm_ve_cfa: ": input fasta file storing vectors/primers"
    trm_op: ": comma separated output fq paired files"
    trm_os: ": merged single-end fq files"
    trm_min_match: ": default 13; min match b/t vector and a read to be trimmed"
    trm_min_rlen: ": default 70; min read length post-trimming"
    trm_q: ": default 2 (ASCII 35 #); min phred score (ASCII >= 33)"
    fe_k: ": default 14 (<= 16); substring length to calibrate"
  }
  output {
    File out_stdout = stdout()
    File out_osf_q = "${in_osf_q}"
  }
}