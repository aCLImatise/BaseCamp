version 1.0

task FragSim {
  input {
    Boolean? _fragments_default
    Boolean? comp
    Boolean? dist
    Boolean? norev
    Boolean? case
    File? write_output_bam
    Boolean? write_output_zipped
    Boolean? produce_uncompressed_bam
    Boolean? tag
    Boolean? tmp
    Boolean? uniq
    Boolean? minimum_fragments_length
    Boolean? maximum_fragments_length
    Boolean? generate_fragments_fixed
    Boolean? open_file_length
    Boolean? open_file_size
    Boolean? loc
    Boolean? scale
    Boolean? gc
  }
  command <<<
    fragSim \
      ~{if (_fragments_default) then "-n" else ""} \
      ~{if (comp) then "--comp" else ""} \
      ~{if (dist) then "--dist" else ""} \
      ~{if (norev) then "--norev" else ""} \
      ~{if (case) then "--case" else ""} \
      ~{if (write_output_bam) then "-b" else ""} \
      ~{if (write_output_zipped) then "-o" else ""} \
      ~{if (produce_uncompressed_bam) then "-u" else ""} \
      ~{if (tag) then "-tag" else ""} \
      ~{if (tmp) then "-tmp" else ""} \
      ~{if (uniq) then "-uniq" else ""} \
      ~{if (minimum_fragments_length) then "-m" else ""} \
      ~{if (maximum_fragments_length) then "-M" else ""} \
      ~{if (generate_fragments_fixed) then "-l" else ""} \
      ~{if (open_file_length) then "-s" else ""} \
      ~{if (open_file_size) then "-f" else ""} \
      ~{if (loc) then "--loc" else ""} \
      ~{if (scale) then "--scale" else ""} \
      ~{if (gc) then "-gc" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gargammel-slim:1.1.2--h68ad25a_0"
  }
  parameter_meta {
    _fragments_default: "[number]                        Generate [number] fragments (default: 10)"
    comp: "[file]                          Base composition for the fragments (default none)"
    dist: "[file]                          Distance from ends to consider  (default: 1)\\nif this is not specified, the base composition\\nwill only reflect the chromosome file used"
    norev: "Do not reverse complement (default: rev. comp half of seqs.)"
    case: "Do not set the sequence to upper-case (default: uppercase the seqs.)"
    write_output_bam: "[bam out]                       Write output as a BAM file (default: fasta in stdout)"
    write_output_zipped: "[fasta out]                     Write output as a zipped fasta (default: fasta in stdout)"
    produce_uncompressed_bam: "Produce uncompressed BAM (good for unix pipe)"
    tag: "[tag]                           Append this string to deflines or BAM tags (Default:  not on/not used)"
    tmp: "[tmp dir]                       Use this directory as the temporary dir for zipped files (default:  /tmp/)"
    uniq: "Make sure that the fragment names are unique by appending a suffix (default:  not on/not used)\\nnote: this might not be practical for large datasets"
    minimum_fragments_length: "[length]                        Minimum fragments length < (default: 0)"
    maximum_fragments_length: "[length]                        Maximum fragments length > (default: 1000)"
    generate_fragments_fixed: "[length]                        Generate fragments of fixed length  (default: 20)"
    open_file_length: "[file]                          Open file with size distribution (one fragment length per line)"
    open_file_size: "[file]                          Open file with size frequency in the following format:\\nlength[TAB]freq ex:\\n40      0.0525\\n41      0.0491\\n..."
    loc: "[file]                  Location for lognormal distribution (default none)"
    scale: "[file]                  Scale for lognormal distribution      (default none)"
    gc: "[gc bias]                       Use GC bias factor  (default: 0)"
  }
  output {
    File out_stdout = stdout()
    File out_write_output_bam = "${in_write_output_bam}"
  }
}