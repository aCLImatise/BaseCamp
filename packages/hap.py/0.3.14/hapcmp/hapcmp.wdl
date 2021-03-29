version 1.0

task Hapcmp {
  input {
    File? input_regions
    File? input_v_cfs
    Boolean? arg_output_block
    Boolean? arg_output_failure
    File? arg_output_shared
    Boolean? arg_reference_fasta
    Boolean? arg_maximum_number_enumerate
    String? output_sequences
    String? progress
    String? progress_seconds
    Boolean? arg_maximum_number_process
    Boolean? arg_apply_filtering
    String? do_alignment
  }
  command <<<
    hapcmp \
      ~{if defined(input_regions) then ("--input-regions " +  '"' + input_regions + '"') else ""} \
      ~{if defined(input_v_cfs) then ("--input-vcfs " +  '"' + input_v_cfs + '"') else ""} \
      ~{if (arg_output_block) then "-b" else ""} \
      ~{if (arg_output_failure) then "-e" else ""} \
      ~{if (arg_output_shared) then "-d" else ""} \
      ~{if (arg_reference_fasta) then "-r" else ""} \
      ~{if (arg_maximum_number_enumerate) then "-n" else ""} \
      ~{if defined(output_sequences) then ("--output-sequences " +  '"' + output_sequences + '"') else ""} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{if defined(progress_seconds) then ("--progress-seconds " +  '"' + progress_seconds + '"') else ""} \
      ~{if (arg_maximum_number_process) then "-l" else ""} \
      ~{if (arg_apply_filtering) then "-f" else ""} \
      ~{if defined(do_alignment) then ("--do-alignment " +  '"' + do_alignment + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hap.py:0.3.14--py27h5c5a3ab_0"
  }
  parameter_meta {
    input_regions: "The input bed file specifying haplotype block\\nregions (use - for stdin)."
    input_v_cfs: "Two VCF files to compare (use file:sample for a\\nspecific sample column)."
    arg_output_block: "[ --output-bed ] arg       Output block results as bed files (default is\\nto output to stdout)."
    arg_output_failure: "[ --output-errors ] arg    Output failure information."
    arg_output_shared: "[ --output-diffs ] arg     Output shared and different variants to a mJSON\\nfile (one json record per line, default is to\\nnot output diffs)."
    arg_reference_fasta: "[ --reference ] arg        The reference fasta file."
    arg_maximum_number_enumerate: "[ --max-n-haplotypes ] arg Maximum number of haplotypes to enumerate."
    output_sequences: "Set to true to output haplotype sequences."
    progress: "Set to true to output progress information."
    progress_seconds: "Output progress information every n seconds."
    arg_maximum_number_process: "[ --limit ] arg            Maximum number of haplotype blocks to process."
    arg_apply_filtering: "[ --apply-filters ] arg    Apply filtering in VCF."
    do_alignment: "Perform alignments on mismatching haplotypes to\\nfind best approximate match.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_shared = "${in_arg_output_shared}"
  }
}