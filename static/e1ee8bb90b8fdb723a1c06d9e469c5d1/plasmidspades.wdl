version 1.0

task Plasmidspades.py {
  input {
    String? directory_store_files
    Boolean? ion_torrent
    Boolean? test
    File? file_interlaced_forward
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
    String? restart_from
    Boolean? disable_gzip_output
    Boolean? disable_rr
    File? dataset
    Int? threads
    Int? memory
    String? tmp_dir
    Int? k
    Float? cov_cut_off
    String? phred_offset
    String spades_do_tpy
  }
  command <<<
    plasmidspades.py \
      ~{spades_do_tpy} \
      ~{if defined(directory_store_files) then ("-o " +  '"' + directory_store_files + '"') else ""} \
      ~{true="--iontorrent" false="" ion_torrent} \
      ~{true="--test" false="" test} \
      ~{if defined(file_interlaced_forward) then ("--12 " +  '"' + file_interlaced_forward + '"') else ""} \
      ~{if defined(file_forward_pairedend) then ("-1 " +  '"' + file_forward_pairedend + '"') else ""} \
      ~{if defined(file_reverse_pairedend) then ("-2 " +  '"' + file_reverse_pairedend + '"') else ""} \
      ~{if defined(file_unpaired_reads) then ("-s " +  '"' + file_unpaired_reads + '"') else ""} \
      ~{if defined(merged) then ("--merged " +  '"' + merged + '"') else ""} \
      ~{true="--pe-12" false="" pe_one_two} \
      ~{true="--pe-1" false="" pe_one} \
      ~{true="--pe-2" false="" pe_two} \
      ~{true="--pe-s" false="" pe_s} \
      ~{true="--pe-m" false="" pe_m} \
      ~{true="--pe-or" false="" pe_or} \
      ~{true="--mp-12" false="" mp_one_two} \
      ~{true="--mp-1" false="" mp_one} \
      ~{true="--mp-2" false="" mp_two} \
      ~{true="--mp-s" false="" mp_s} \
      ~{true="--mp-or" false="" mp_or} \
      ~{true="--hqmp-12" false="" hq_mp_one_two} \
      ~{true="--hqmp-1" false="" hq_mp_one} \
      ~{true="--hqmp-2" false="" hq_mp_two} \
      ~{true="--hqmp-s" false="" hq_mp_s} \
      ~{true="--hqmp-or" false="" hq_mp_or} \
      ~{true="--nxmate-1" false="" nx_mate_one} \
      ~{true="--nxmate-2" false="" nx_mate_two} \
      ~{if defined(sanger) then ("--sanger " +  '"' + sanger + '"') else ""} \
      ~{if defined(pac_bio) then ("--pacbio " +  '"' + pac_bio + '"') else ""} \
      ~{if defined(nano_pore) then ("--nanopore " +  '"' + nano_pore + '"') else ""} \
      ~{if defined(t_slr) then ("--tslr " +  '"' + t_slr + '"') else ""} \
      ~{if defined(trusted_contigs) then ("--trusted-contigs " +  '"' + trusted_contigs + '"') else ""} \
      ~{if defined(untrusted_contigs) then ("--untrusted-contigs " +  '"' + untrusted_contigs + '"') else ""} \
      ~{true="--only-error-correction" false="" only_error_correction} \
      ~{true="--only-assembler" false="" only_assembler} \
      ~{true="--careful" false="" careful} \
      ~{if defined(checkpoints) then ("--checkpoints " +  '"' + checkpoints + '"') else ""} \
      ~{true="--continue" false="" continue} \
      ~{if defined(restart_from) then ("--restart-from " +  '"' + restart_from + '"') else ""} \
      ~{true="--disable-gzip-output" false="" disable_gzip_output} \
      ~{true="--disable-rr" false="" disable_rr} \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(tmp_dir) then ("--tmp-dir " +  '"' + tmp_dir + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if defined(cov_cut_off) then ("--cov-cutoff " +  '"' + cov_cut_off + '"') else ""} \
      ~{if defined(phred_offset) then ("--phred-offset " +  '"' + phred_offset + '"') else ""}
  >>>
  parameter_meta {
    directory_store_files: "directory to store all the resulting files (required)"
    ion_torrent: "this flag is required for IonTorrent data"
    test: "runs SPAdes on toy dataset"
    file_interlaced_forward: "file with interlaced forward and reverse paired-end reads"
    file_forward_pairedend: "file with forward paired-end reads"
    file_reverse_pairedend: "file with reverse paired-end reads"
    file_unpaired_reads: "file with unpaired reads"
    merged: "file with merged forward and reverse paired-end reads"
    pe_one_two: "<#> <filename>      file with interlaced reads for paired-end library number <#>. Older deprecated syntax is -pe<#>-12 <filename>"
    pe_one: "<#> <filename>       file with forward reads for paired-end library number <#>. Older deprecated syntax is -pe<#>-1 <filename>"
    pe_two: "<#> <filename>       file with reverse reads for paired-end library number <#>. Older deprecated syntax is -pe<#>-2 <filename>"
    pe_s: "<#> <filename>       file with unpaired reads for paired-end library number <#>. Older deprecated syntax is -pe<#>-s <filename>"
    pe_m: "<#> <filename>       file with merged reads for paired-end library number <#>. Older deprecated syntax is -pe<#>-m <filename>"
    pe_or: "<#> <or>            orientation of reads for paired-end library number <#>  (<or> = fr, rf, ff). Older deprecated syntax is -pe<#>-<or>"
    mp_one_two: "<#> <filename>      file with interlaced reads for mate-pair library number <#>. Older deprecated syntax is -mp<#>-12 <filename>"
    mp_one: "<#> <filename>       file with forward reads for mate-pair library number <#>. Older deprecated syntax is -mp<#>-1 <filename>"
    mp_two: "<#> <filename>       file with reverse reads for mate-pair library number <#>. Older deprecated syntax is -mp<#>-2 <filename>"
    mp_s: "<#> <filename>       file with unpaired reads for mate-pair library number <#>. Older deprecated syntax is -mp<#>-s <filename>"
    mp_or: "<#> <or>            orientation of reads for mate-pair library number <#>  (<or> = fr, rf, ff). Older deprecated syntax is -mp<#>-<or>"
    hq_mp_one_two: "<#> <filename>    file with interlaced reads for high-quality mate-pair library number <#>. Older deprecated syntax is -hqmp<#>-12 <filename>"
    hq_mp_one: "<#> <filename>     file with forward reads for high-quality mate-pair library number <#>. Older deprecated syntax is -hqmp<#>-1 <filename>"
    hq_mp_two: "<#> <filename>     file with reverse reads for high-quality mate-pair library number <#>. Older deprecated syntax is -hqmp<#>-2 <filename>"
    hq_mp_s: "<#> <filename>     file with unpaired reads for high-quality mate-pair library number <#>. Older deprecated syntax is -hqmp<#>-s <filename>"
    hq_mp_or: "<#> <or>          orientation of reads for high-quality mate-pair library number <#>  (<or> = fr, rf, ff). Older deprecated syntax is -hqmp<#>-<or>"
    nx_mate_one: "<#> <filename>   file with forward reads for Lucigen NxMate library number <#>. Older deprecated syntax is -nxmate<#>-1 <filename>"
    nx_mate_two: "<#> <filename>   file with reverse reads for Lucigen NxMate library number <#>. Older deprecated syntax is -nxmate<#>-2 <filename>"
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
    restart_from: "restart run with updated options and from the specified check-point ('ec', 'as', 'k<int>', 'mc', 'last')"
    disable_gzip_output: "forces error correction not to compress the corrected reads"
    disable_rr: "disables repeat resolution stage of assembling"
    dataset: "file with dataset description in YAML format"
    threads: "number of threads. [default: 16]"
    memory: "RAM limit for SPAdes in Gb (terminates if exceeded). [default: 250]"
    tmp_dir: "directory for temporary files. [default: <output_dir>/tmp]"
    k: "[<int> ...]        list of k-mer sizes (must be odd and less than 128) [default: 'auto']"
    cov_cut_off: "coverage cutoff value (a positive float number, or 'auto', or 'off') [default: 'off']"
    phred_offset: "PHRED quality offset in the input reads (33 or 64), [default: auto-detect]"
    spades_do_tpy: ""
  }
}