version 1.0

task ArrowAnnotationsLoadGff3 {
  input {
    String? source
    Int? batch_size
    Boolean? test
    Boolean? use_name
    Boolean? disable_cds_recalculation
    Boolean? timing
    String organism
    Int gff_three
  }
  command <<<
    arrow annotations load_gff3 \
      ~{organism} \
      ~{gff_three} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if defined(batch_size) then ("--batch_size " +  '"' + batch_size + '"') else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (use_name) then "--use_name" else ""} \
      ~{if (disable_cds_recalculation) then "--disable_cds_recalculation" else ""} \
      ~{if (timing) then "--timing" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    source: "URL where the input dataset can be found."
    batch_size: "Size of batches before writing  [default: 1]"
    test: "Run in dry run mode"
    use_name: "Use the given name instead of generating one."
    disable_cds_recalculation: "Disable CDS recalculation and instead use the\\none provided"
    timing: "Output loading performance metrics"
    organism: ""
    gff_three: ""
  }
  output {
    File out_stdout = stdout()
  }
}