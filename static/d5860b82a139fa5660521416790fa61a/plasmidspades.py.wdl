version 1.0

task Plasmidspadespy {
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
    Boolean? mp_one_two
    Boolean? mp_one
    Boolean? mp_two
    Boolean? mp_s
    Boolean? mp_or
    Boolean? hq_mp_one_two
    Boolean? hq_mp_one
    Boolean? hq_mp_two
    Boolean? hq_mp_s
    Boolean? hq_mp_or
    Boolean? nx_mate_one
    Boolean? nx_mate_two
    File? sanger
    File? pac_bio
    File? nano_pore
    File? t_slr
    File? trusted_contigs
    File? untrusted_contigs
    Boolean? only_error_correction
    Boolean? only_assembler
    Boolean? careful
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
    Float? cov_cut_off
    Int? phred_offset
    String spades_do_tpy
  }
  command <<<
    plasmidspades_py \
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
      ~{if (mp_one_two) then "--mp-12" else ""} \
      ~{if (mp_one) then "--mp-1" else ""} \
      ~{if (mp_two) then "--mp-2" else ""} \
      ~{if (mp_s) then "--mp-s" else ""} \
      ~{if (mp_or) then "--mp-or" else ""} \
      ~{if (hq_mp_one_two) then "--hqmp-12" else ""} \
      ~{if (hq_mp_one) then "--hqmp-1" else ""} \
      ~{if (hq_mp_two) then "--hqmp-2" else ""} \
      ~{if (hq_mp_s) then "--hqmp-s" else ""} \
      ~{if (hq_mp_or) then "--hqmp-or" else ""} \
      ~{if (nx_mate_one) then "--nxmate-1" else ""} \
      ~{if (nx_mate_two) then "--nxmate-2" else ""} \
      ~{if defined(sanger) then ("--sanger " +  '"' + sanger + '"') else ""} \
      ~{if defined(pac_bio) then ("--pacbio " +  '"' + pac_bio + '"') else ""} \
      ~{if defined(nano_pore) then ("--nanopore " +  '"' + nano_pore + '"') else ""} \
      ~{if defined(t_slr) then ("--tslr " +  '"' + t_slr + '"') else ""} \
      ~{if defined(trusted_contigs) then ("--trusted-contigs " +  '"' + trusted_contigs + '"') else ""} \
      ~{if defined(untrusted_contigs) then ("--untrusted-contigs " +  '"' + untrusted_contigs + '"') else ""} \
      ~{if (only_error_correction) then "--only-error-correction" else ""} \
      ~{if (only_assembler) then "--only-assembler" else ""} \
      ~{if (careful) then "--careful" else ""} \
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
      ~{if defined(cov_cut_off) then ("--cov-cutoff " +  '"' + cov_cut_off + '"') else ""} \
      ~{if defined(phred_offset) then ("--phred-offset " +  '"' + phred_offset + '"') else ""}
  >>>
  runtime {
    docker: "None"
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
    mp_one_two: "<#> <filename>      file with interlaced reads for mate-pair library number <#>.\\nOlder deprecated syntax is -mp<#>-12 <filename>"
    mp_one: "<#> <filename>       file with forward reads for mate-pair library number <#>.\\nOlder deprecated syntax is -mp<#>-1 <filename>"
    mp_two: "<#> <filename>       file with reverse reads for mate-pair library number <#>.\\nOlder deprecated syntax is -mp<#>-2 <filename>"
    mp_s: "<#> <filename>       file with unpaired reads for mate-pair library number <#>.\\nOlder deprecated syntax is -mp<#>-s <filename>"
    mp_or: "<#> <or>            orientation of reads for mate-pair library number <#>\\n(<or> = fr, rf, ff).\\nOlder deprecated syntax is -mp<#>-<or>"
    hq_mp_one_two: "<#> <filename>    file with interlaced reads for high-quality mate-pair library number <#>.\\nOlder deprecated syntax is -hqmp<#>-12 <filename>"
    hq_mp_one: "<#> <filename>     file with forward reads for high-quality mate-pair library number <#>.\\nOlder deprecated syntax is -hqmp<#>-1 <filename>"
    hq_mp_two: "<#> <filename>     file with reverse reads for high-quality mate-pair library number <#>.\\nOlder deprecated syntax is -hqmp<#>-2 <filename>"
    hq_mp_s: "<#> <filename>     file with unpaired reads for high-quality mate-pair library number <#>.\\nOlder deprecated syntax is -hqmp<#>-s <filename>"
    hq_mp_or: "<#> <or>          orientation of reads for high-quality mate-pair library number <#>\\n(<or> = fr, rf, ff).\\nOlder deprecated syntax is -hqmp<#>-<or>"
    nx_mate_one: "<#> <filename>   file with forward reads for Lucigen NxMate library number <#>.\\nOlder deprecated syntax is -nxmate<#>-1 <filename>"
    nx_mate_two: "<#> <filename>   file with reverse reads for Lucigen NxMate library number <#>.\\nOlder deprecated syntax is -nxmate<#>-2 <filename>"
    sanger: "file with Sanger reads"
    pac_bio: "file with PacBio reads"
    nano_pore: "file with Nanopore reads"
    t_slr: "file with TSLR-contigs"
    trusted_contigs: "file with trusted contigs"
    untrusted_contigs: "file with untrusted contigs"
    only_error_correction: "runs only read error correction (without assembling)"
    only_assembler: "runs only assembling (without read error correction)"
    careful: "tries to reduce number of mismatches and short indels"
    checkpoints: "save intermediate check-points ('last', 'all')"
    continue: "continue run from the last available check-point"
    restart_from: "restart run with updated options and from the specified check-point\\n('ec', 'as', 'k<int>', 'mc', 'last')"
    disable_gzip_output: "forces error correction not to compress the corrected reads"
    disable_rr: "disables repeat resolution stage of assembling"
    dataset: "file with dataset description in YAML format"
    threads: "number of threads. [default: 16]"
    memory: "RAM limit for SPAdes in Gb (terminates if exceeded). [default: 250]"
    tmp_dir: "directory for temporary files. [default: <output_dir>/tmp]"
    list_kmer_sizes: "[<int> ...]        list of k-mer sizes (must be odd and less than 128)\\n[default: 'auto']"
    cov_cut_off: "coverage cutoff value (a positive float number, or 'auto', or 'off')\\n[default: 'off']"
    phred_offset: "PHRED quality offset in the input reads (33 or 64),\\n[default: auto-detect]\\n"
    spades_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}