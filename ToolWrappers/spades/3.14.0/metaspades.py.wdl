version 1.0

task Metaspadespy {
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
    File? t_slr
    Boolean? only_error_correction
    Boolean? only_assembler
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
    String spades_do_tpy
  }
  command <<<
    metaspades_py \
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
      ~{if defined(t_slr) then ("--tslr " +  '"' + t_slr + '"') else ""} \
      ~{if (only_error_correction) then "--only-error-correction" else ""} \
      ~{if (only_assembler) then "--only-assembler" else ""} \
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
    pac_bio: "file with PacBio reads"
    nano_pore: "file with Nanopore reads"
    t_slr: "file with TSLR-contigs"
    only_error_correction: "runs only read error correction (without assembling)"
    only_assembler: "runs only assembling (without read error correction)"
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
    phred_offset: "PHRED quality offset in the input reads (33 or 64),\\n[default: auto-detect]\\n"
    spades_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}