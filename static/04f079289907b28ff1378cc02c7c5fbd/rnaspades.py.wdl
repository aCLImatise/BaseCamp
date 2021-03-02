version 1.0

task Rnaspadespy {
  input {
    Directory? directory_store_files
    Boolean? ion_torrent
    Boolean? test
    File? file_interlaced_pairedend
    File? file_forward_pairedend
    File? file_reverse_pairedend
    File? file_unpaired_reads
    File? merged
    Boolean? pe_one_two
    Boolean? pe_one
    Boolean? pe_two
    Boolean? pe_s
    Boolean? pe_m
    Boolean? pe_or
    File? pac_bio
    File? nano_pore
    File? trusted_contigs
    File? untrusted_contigs
    File? fl_rna
    String? ss
    String? checkpoints
    Boolean? continue
    Int? restart_from
    Boolean? disable_gzip_output
    Boolean? disable_rr
    File? dataset
    Int? threads
    Int? memory
    Directory? tmp_dir
    Int? list_kmer_sizes
    Int? phred_offset
    Directory? custom_hmms
    String spades_do_tpy
  }
  command <<<
    rnaspades_py \
      ~{spades_do_tpy} \
      ~{if defined(directory_store_files) then ("-o " +  '"' + directory_store_files + '"') else ""} \
      ~{if (ion_torrent) then "--iontorrent" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if defined(file_interlaced_pairedend) then ("--12 " +  '"' + file_interlaced_pairedend + '"') else ""} \
      ~{if defined(file_forward_pairedend) then ("-1 " +  '"' + file_forward_pairedend + '"') else ""} \
      ~{if defined(file_reverse_pairedend) then ("-2 " +  '"' + file_reverse_pairedend + '"') else ""} \
      ~{if defined(file_unpaired_reads) then ("-s " +  '"' + file_unpaired_reads + '"') else ""} \
      ~{if defined(merged) then ("--merged " +  '"' + merged + '"') else ""} \
      ~{if (pe_one_two) then "--pe-12" else ""} \
      ~{if (pe_one) then "--pe-1" else ""} \
      ~{if (pe_two) then "--pe-2" else ""} \
      ~{if (pe_s) then "--pe-s" else ""} \
      ~{if (pe_m) then "--pe-m" else ""} \
      ~{if (pe_or) then "--pe-or" else ""} \
      ~{if defined(pac_bio) then ("--pacbio " +  '"' + pac_bio + '"') else ""} \
      ~{if defined(nano_pore) then ("--nanopore " +  '"' + nano_pore + '"') else ""} \
      ~{if defined(trusted_contigs) then ("--trusted-contigs " +  '"' + trusted_contigs + '"') else ""} \
      ~{if defined(untrusted_contigs) then ("--untrusted-contigs " +  '"' + untrusted_contigs + '"') else ""} \
      ~{if defined(fl_rna) then ("--fl-rna " +  '"' + fl_rna + '"') else ""} \
      ~{if defined(ss) then ("--ss " +  '"' + ss + '"') else ""} \
      ~{if defined(checkpoints) then ("--checkpoints " +  '"' + checkpoints + '"') else ""} \
      ~{if (continue) then "--continue" else ""} \
      ~{if defined(restart_from) then ("--restart-from " +  '"' + restart_from + '"') else ""} \
      ~{if (disable_gzip_output) then "--disable-gzip-output" else ""} \
      ~{if (disable_rr) then "--disable-rr" else ""} \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if defined(list_kmer_sizes) then ("-k " +  '"' + list_kmer_sizes + '"') else ""} \
      ~{if defined(phred_offset) then ("--phred-offset " +  '"' + phred_offset + '"') else ""} \
      ~{if defined(custom_hmms) then ("--custom-hmms " +  '"' + custom_hmms + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/spades:3.15.0--h633aebb_0"
  }
  parameter_meta {
    directory_store_files: "directory to store all the resulting files (required)"
    ion_torrent: "this flag is required for IonTorrent data"
    test: "runs SPAdes on toy dataset"
    file_interlaced_pairedend: "file with interlaced forward and reverse paired-end reads"
    file_forward_pairedend: "file with forward paired-end reads"
    file_reverse_pairedend: "file with reverse paired-end reads"
    file_unpaired_reads: "file with unpaired reads"
    merged: "file with merged forward and reverse paired-end reads"
    pe_one_two: "<#> <filename>      file with interlaced reads for paired-end library number <#>.\\nOlder deprecated syntax is -pe<#>-12 <filename>"
    pe_one: "<#> <filename>       file with forward reads for paired-end library number <#>.\\nOlder deprecated syntax is -pe<#>-1 <filename>"
    pe_two: "<#> <filename>       file with reverse reads for paired-end library number <#>.\\nOlder deprecated syntax is -pe<#>-2 <filename>"
    pe_s: "<#> <filename>       file with unpaired reads for paired-end library number <#>.\\nOlder deprecated syntax is -pe<#>-s <filename>"
    pe_m: "<#> <filename>       file with merged reads for paired-end library number <#>.\\nOlder deprecated syntax is -pe<#>-m <filename>"
    pe_or: "<#> <or>            orientation of reads for paired-end library number <#>\\n(<or> = fr, rf, ff).\\nOlder deprecated syntax is -pe<#>-<or>"
    pac_bio: "file with PacBio reads"
    nano_pore: "file with Nanopore reads"
    trusted_contigs: "file with trusted contigs"
    untrusted_contigs: "file with untrusted contigs"
    fl_rna: "file with PacBio/Nanopore/contigs that capture full-length transcripts"
    ss: "strand specific data, <type> = fr (normal) and rf (antisense).\\nOlder deprecated syntax is --ss-<type>"
    checkpoints: "save intermediate check-points ('last', 'all')"
    continue: "continue run from the last available check-point (only -o should be specified)"
    restart_from: "restart run with updated options and from the specified check-point\\n('as', 'k<int>', 'last')"
    disable_gzip_output: "forces error correction not to compress the corrected reads"
    disable_rr: "disables repeat resolution stage of assembling"
    dataset: "file with dataset description in YAML format"
    threads: "number of threads. [default: 16]"
    memory: "RAM limit for SPAdes in Gb (terminates if exceeded). [default: 250]"
    tmp_dir: "directory for temporary files. [default: <output_dir>/tmp]"
    list_kmer_sizes: "[<int> ...]        list of k-mer sizes (must be odd and less than 128)\\n[default: 'auto']"
    phred_offset: "PHRED quality offset in the input reads (33 or 64),\\n[default: auto-detect]"
    custom_hmms: "directory with custom hmms that replace default ones,\\n[default: None]\\n"
    spades_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}