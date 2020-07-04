version 1.0

task PanphlanMap.py {
  input {
    String? short_read_files
    String? i_bowtie_two_indexes
    String? fast_x
    String? clade
    String? mapping_result_outputfile
    String? out_bam
    String? nproc
    String? mgb
    String? read_length
    String? bt_two
    String? th_mismatches
    String? tmp
    Boolean? verbose
  }
  command <<<
    panphlan_map.py \
      ~{if defined(short_read_files) then ("--input " +  '"' + short_read_files + '"') else ""} \
      ~{if defined(i_bowtie_two_indexes) then ("--i_bowtie2_indexes " +  '"' + i_bowtie_two_indexes + '"') else ""} \
      ~{if defined(fast_x) then ("--fastx " +  '"' + fast_x + '"') else ""} \
      ~{if defined(clade) then ("--clade " +  '"' + clade + '"') else ""} \
      ~{if defined(mapping_result_outputfile) then ("--output " +  '"' + mapping_result_outputfile + '"') else ""} \
      ~{if defined(out_bam) then ("--out_bam " +  '"' + out_bam + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if defined(mgb) then ("--mGB " +  '"' + mgb + '"') else ""} \
      ~{if defined(read_length) then ("--readLength " +  '"' + read_length + '"') else ""} \
      ~{if defined(bt_two) then ("--bt2 " +  '"' + bt_two + '"') else ""} \
      ~{if defined(th_mismatches) then ("--th_mismatches " +  '"' + th_mismatches + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    short_read_files: "Short read input files. If no file is specified, panphlan_map reads from standard input."
    i_bowtie_two_indexes: "Input directory of bowtie2 indexes and pangenome"
    fast_x: "Read input format (fasta or fastq), default: fastq, if not fasta recognized by file ending."
    clade: "Name of the species or clade: -c ecoli16"
    mapping_result_outputfile: "Mapping result output-file: -o path/sampleID_clade.csv"
    out_bam: "Get BAM output file: --out_bam sampleID.bam"
    nproc: "Maximum number of processors to use. Default is 12 or a lower number of available processors."
    mgb: "Maximum amount of memory for Samtools: -mGB 4"
    read_length: "Minimum read length, default: --readLength 70"
    bt_two: "Additional bowtie2 mapping options, separated by slash: /-D/20/-R/3/, default: -bt2 /--very-sensitive/"
    th_mismatches: "Number of mismatches to filter (bam)"
    tmp: "Directory for temporary files, default: --tmp TMP_panphlan_map"
    verbose: "Display progress information"
  }
}