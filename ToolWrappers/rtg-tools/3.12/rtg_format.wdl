version 1.0

task RtgFormat {
  input {
    String? format
    File? input_list_file
    File? left_input_file
    Boolean? protein
    Float? quality_format
    File? right_input_file
    Boolean? duster
    String? exclude
    String? select_read_group
    Int? trim_threshold
    Boolean? allow_duplicate_names
    Boolean? no_names
    Boolean? no_quality
    File? sam_rg
  }
  command <<<
    rtg format \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(input_list_file) then ("--input-list-file " +  '"' + input_list_file + '"') else ""} \
      ~{if defined(left_input_file) then ("--left " +  '"' + left_input_file + '"') else ""} \
      ~{if (protein) then "--protein" else ""} \
      ~{if defined(quality_format) then ("--quality-format " +  '"' + quality_format + '"') else ""} \
      ~{if defined(right_input_file) then ("--right " +  '"' + right_input_file + '"') else ""} \
      ~{if (duster) then "--duster" else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(select_read_group) then ("--select-read-group " +  '"' + select_read_group + '"') else ""} \
      ~{if defined(trim_threshold) then ("--trim-threshold " +  '"' + trim_threshold + '"') else ""} \
      ~{if (allow_duplicate_names) then "--allow-duplicate-names" else ""} \
      ~{if (no_names) then "--no-names" else ""} \
      ~{if (no_quality) then "--no-quality" else ""} \
      ~{if defined(sam_rg) then ("--sam-rg " +  '"' + sam_rg + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rtg-tools:3.12--0"
  }
  parameter_meta {
    format: "format of input. Allowed values are [fasta,\\nfastq, fastq-interleaved, sam-se, sam-pe]\\n(Default is fasta)"
    input_list_file: "file containing a list of input read files (1\\nper line)"
    left_input_file: "left input file for FASTA/FASTQ paired end"
    protein: "input is protein. If this option is not\\nspecified, then the input is assumed to\\nconsist of nucleotides"
    quality_format: "quality data encoding method used in FASTQ\\ninput files (Illumina 1.8+ uses sanger).\\nAllowed values are [sanger, solexa, illumina]\\n(Default is sanger)"
    right_input_file: "right input file for FASTA/FASTQ paired end"
    duster: "treat lower case residues as unknowns"
    exclude: "exclude input sequences based on their name.\\nIf the input sequence contains the specified\\nstring then that sequence is excluded from the\\nSDF. May be specified 0 or more times"
    select_read_group: "when formatting from SAM/BAM input, only\\ninclude reads with this read group ID"
    trim_threshold: "trim read ends to maximise base quality above\\nthe given threshold"
    allow_duplicate_names: "disable checking for duplicate sequence names"
    no_names: "do not include name data in the SDF output"
    no_quality: "do not include quality data in the SDF output"
    sam_rg: "|FILE       file containing a single valid read group SAM\\nheader line or a string in the form\\n\\\"@RG\\tID:READGROUP1\\tSM:BACT_SAMPLE\\tPL:ILLUMINA\\\"\\n"
  }
  output {
    File out_stdout = stdout()
  }
}