version 1.0

task CoolboxAddARGS {
  input {
    String current_range
    String add
    String end_with
    String gen_notebook
    String go_to
    String joint_view
    String load_module
    String plot
    String print_source
    String run_j_up_y_ter
    String run_webapp
    String set_genome
    String show_doc
    String source
    String version
    String frame_pos
  }
  command <<<
    coolbox add ARGS \
      ~{current_range} \
      ~{add} \
      ~{end_with} \
      ~{gen_notebook} \
      ~{go_to} \
      ~{joint_view} \
      ~{load_module} \
      ~{plot} \
      ~{print_source} \
      ~{run_j_up_y_ter} \
      ~{run_webapp} \
      ~{set_genome} \
      ~{show_doc} \
      ~{source} \
      ~{version} \
      ~{frame_pos}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coolbox:0.3.7--pyhdfd78af_0"
  }
  parameter_meta {
    current_range: "frames"
    add: "Add a Element(Track, Coverage, Feature), for example: coolbox add XAxis"
    end_with: "End the with block"
    gen_notebook: "Generate The notebook contain codes for run coolbox browser."
    go_to: "Goto a genome range."
    joint_view: "Start a new frame positioned at the specified frame_pos in the final joint view. The center frame should be a single Cool, HicMat, DotHic track."
    load_module: "Import custom tracks from a module/package for example:"
    plot: "Draw a figure within a genome range and save to file"
    print_source: "Print the browser composing code."
    run_j_up_y_ter: "Create a notebook according to command line, then start a jupyter process."
    run_webapp: "Run a independent coolbox browser web app. (Create notebook and run voila)"
    set_genome: "Set reference genome for browser object."
    show_doc: "Print the document of specified Element type. For example: coolbox show_doc Cool"
    source: "start_with\\nStart a 'with' block, apply the element to all elements within the block."
    version: "print coolbox version"
    frame_pos: "genome"
  }
  output {
    File out_stdout = stdout()
  }
}