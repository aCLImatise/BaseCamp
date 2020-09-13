version 1.0

task ICLIPro {
  input {
    Directory? output_folder_default
    Int? genomic_bin_size
    Int? number_reads_required
    Int? flanking_distances_when
    Int? use_only_reads
    Int? read_len_groups
    Int? generate_read_maps
    Int? flanking_region_read
    String in_dot_bam
  }
  command <<<
    iCLIPro \
      ~{in_dot_bam} \
      ~{if defined(output_folder_default) then ("-o " +  '"' + output_folder_default + '"') else ""} \
      ~{if defined(genomic_bin_size) then ("-b " +  '"' + genomic_bin_size + '"') else ""} \
      ~{if defined(number_reads_required) then ("-r " +  '"' + number_reads_required + '"') else ""} \
      ~{if defined(flanking_distances_when) then ("-s " +  '"' + flanking_distances_when + '"') else ""} \
      ~{if defined(use_only_reads) then ("-q " +  '"' + use_only_reads + '"') else ""} \
      ~{if defined(read_len_groups) then ("-g " +  '"' + read_len_groups + '"') else ""} \
      ~{if defined(generate_read_maps) then ("-p " +  '"' + generate_read_maps + '"') else ""} \
      ~{if defined(flanking_region_read) then ("-f " +  '"' + flanking_region_read + '"') else ""}
  >>>
  parameter_meta {
    output_folder_default: "output folder (default is cwd - current working directory)"
    genomic_bin_size: "genomic bin size (100..1000, default: 300)"
    number_reads_required: "number of reads required in bin (20..500, default: 50)"
    flanking_distances_when: "flanking distances when calculating start site overlap ratio (3..15, default: 5)"
    use_only_reads: "use only reads with minimum mapping quality (mapq) (0..100, default: 10)"
    read_len_groups: "read len groups (e.g.: \\\"A:16-39,A1:16-25,A2:26-32,A3:33-39,L:20,B:42\\\")"
    generate_read_maps: "generate read overlap maps based on these\\ncomparisons (e.g.: \\\"A1-A3,A2-A3,A1-B,A2-B,A3-B,L-B,A-B\\\")"
    flanking_region_read: "flanking region for read overlap maps (default: 50)"
    in_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder_default = "${in_output_folder_default}"
  }
}