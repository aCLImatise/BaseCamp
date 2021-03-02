version 1.0

task MITObimpl {
  input {
    Int? start
    Int? end
    String? sample
    String? ref
    File? read_pool
    File? quick
    File? maf
    Int? kb_a_it
    Boolean? platform
    Boolean? de_novo
    Boolean? extend_readpool_contain
    Boolean? verbose
    Boolean? split
    Boolean? clean
    Boolean? trim_reads
    Boolean? trim_overhang
    Int? mismatch
    Int? min_cov
    Int? min_len
    File? mira_path
    Boolean? redirect_tmp
    Boolean? nfs_warn_only
  }
  command <<<
    MITObim_pl \
      ~{if defined(start) then ("-start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("-end " +  '"' + end + '"') else ""} \
      ~{if defined(sample) then ("-sample " +  '"' + sample + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(read_pool) then ("-readpool " +  '"' + read_pool + '"') else ""} \
      ~{if defined(quick) then ("-quick " +  '"' + quick + '"') else ""} \
      ~{if defined(maf) then ("-maf " +  '"' + maf + '"') else ""} \
      ~{if defined(kb_a_it) then ("--kbait " +  '"' + kb_a_it + '"') else ""} \
      ~{if (platform) then "--platform" else ""} \
      ~{if (de_novo) then "--denovo" else ""} \
      ~{if (extend_readpool_contain) then "--pair" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if (trim_reads) then "--trimreads" else ""} \
      ~{if (trim_overhang) then "--trimoverhang" else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(min_cov) then ("--min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(mira_path) then ("--mirapath " +  '"' + mira_path + '"') else ""} \
      ~{if (redirect_tmp) then "--redirect_tmp" else ""} \
      ~{if (nfs_warn_only) then "--NFS_warn_only" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mitobim:1.9.1--0"
  }
  parameter_meta {
    start: "iteration to start with (default=0, when using '-quick' reference)"
    end: "iteration to end with (default=startiteration, i.e. if not specified otherwise stop after 1 iteration)"
    sample: "sampleID (please don't use '.' in the sampleID). If resuming, the sampleID needs to be identical to that of the previous iteration / MIRA assembly."
    ref: "referenceID. If resuming, use the same as in previous iteration/initial MIRA assembly."
    read_pool: "readpool in fastq format (*.gz is also allowed). read pairs need to be interleaved for full functionality of the '-pair' option below."
    quick: "reference sequence to be used as bait in fasta format"
    maf: "extracts reference from maf file created by previous MITObim iteration/MIRA assembly (resume)"
    kb_a_it: "set kmer for baiting stringency (default: 31)"
    platform: "specify sequencing platform (default: 'solexa'; other options: 'iontor', '454', 'pacbio')"
    de_novo: "runs MIRA in denovo mode"
    extend_readpool_contain: "extend readpool to contain full read pairs, even if only one member was baited (relies on /1 and /2 header convention for read pairs) (default: no)."
    verbose: "show detailed output of MIRA modules (default: no)"
    split: "split reference at positions with more than 5N (default: no)"
    clean: "retain only the last 2 iteration directories (default: no)"
    trim_reads: "trim data (default: no; we recommend to trim beforehand and feed MITObim with pre trimmed data)"
    trim_overhang: "trim overhang up- and downstream of reference, i.e. don't extend the bait, just re-assemble (default: no)"
    mismatch: "number of allowed mismatches in mapping - only for illumina data (default: 15% of avg. read length)"
    min_cov: "minimum average coverage of contigs to be retained (default: 0 - off)"
    min_len: "minimum length of contig to be retained as backbone (default: 0 - off)"
    mira_path: "full path to MIRA binaries (only needed if MIRA is not in PATH)"
    redirect_tmp: "redirect temporary output to this location (useful in case you are running MITObim on an NFS mount)"
    nfs_warn_only: "allow MIRA to run on NFS mount without aborting -  warn only (expert option - see MIRA documentation 'check_nfs')"
  }
  output {
    File out_stdout = stdout()
  }
}