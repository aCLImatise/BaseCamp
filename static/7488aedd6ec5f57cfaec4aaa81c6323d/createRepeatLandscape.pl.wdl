version 1.0

task CreateRepeatLandscapepl {
  input {
    Boolean? version
    File? div
    Boolean? set_genome_size
    File? two_bit
    Boolean? output_javascript_page
    String example_dot_align_do_tgz
  }
  command <<<
    createRepeatLandscape_pl \
      ~{example_dot_align_do_tgz} \
      ~{if (version) then "-version" else ""} \
      ~{if defined(div) then ("-div " +  '"' + div + '"') else ""} \
      ~{if (set_genome_size) then "-g" else ""} \
      ~{if defined(two_bit) then ("-twoBit " +  '"' + two_bit + '"') else ""} \
      ~{if (output_javascript_page) then "-j" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/repeatmasker:4.1.1--pl526_1"
  }
  parameter_meta {
    version: "Displays the version of the program"
    div: "The divergence summary file created with the\\ncalcDivergenceFromAlign.pl script."
    set_genome_size: "#\\nSet the genome size used in percentage calculations."
    two_bit: "Get the genome size directly from the sequence file ( excluding Ns\\n). This option requires that the UCSC utility \\\"twoBitInfo\\\" is in\\nyour path."
    output_javascript_page: "Output javascript only and not a fully constructed HTML page."
    example_dot_align_do_tgz: "This creates an additional file \\\"example_with_div.align\\\" which contains"
  }
  output {
    File out_stdout = stdout()
  }
}