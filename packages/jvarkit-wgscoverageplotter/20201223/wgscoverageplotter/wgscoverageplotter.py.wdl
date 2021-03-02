version 1.0

task Wgscoverageplotterpy {
  input {
    Boolean? clip
    Boolean? dimension
    Boolean? disable_paired_overlap
    Boolean? help_format
    Boolean? include_contig_regex
    Boolean? mapq
    Boolean? max_depth
    Boolean? min_contig_length
    File? output_file_optional
    Boolean? partition
    Boolean? percentile
    Boolean? points
    Boolean? samples
    Boolean? skip_contig_regex
    Boolean? set_style_elements
    String files
  }
  command <<<
    wgscoverageplotter_py \
      ~{files} \
      ~{if (clip) then "--clip" else ""} \
      ~{if (dimension) then "--dimension" else ""} \
      ~{if (disable_paired_overlap) then "--disable-paired-overlap" else ""} \
      ~{if (help_format) then "--helpFormat" else ""} \
      ~{if (include_contig_regex) then "--include-contig-regex" else ""} \
      ~{if (mapq) then "--mapq" else ""} \
      ~{if (max_depth) then "--max-depth" else ""} \
      ~{if (min_contig_length) then "--min-contig-length" else ""} \
      ~{if (output_file_optional) then "--output" else ""} \
      ~{if (partition) then "--partition" else ""} \
      ~{if (percentile) then "--percentile" else ""} \
      ~{if (points) then "--points" else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if (skip_contig_regex) then "--skip-contig-regex" else ""} \
      ~{if (set_style_elements) then "-D" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/jvarkit-wgscoverageplotter:20201223--1"
  }
  parameter_meta {
    clip: "Don't show coverage to be greater than 'max-depth' in the SVG file.\\nDefault: false"
    dimension: "Image Dimension. a dimension can be specified as '[integer]x[integer]'\\nor it can be the path to an existing png,jpg,xcf,svg file.\\nDefault: java.awt.Dimension[width=1000,height=500]"
    disable_paired_overlap: "Count overlapping bases with mate for paired-end\\nDefault: false"
    help_format: "What kind of help. One of [usage,markdown,xml]."
    include_contig_regex: "Only keep chromosomes matching this regular expression. Ignore if blank.\\nDefault: <empty string>"
    mapq: "min mapping quality\\nDefault: 1"
    max_depth: "Max depth to display. The special value '-1' will first compute the\\naverage depth and the set the max depth to 2*average\\nDefault: 100"
    min_contig_length: "Skip chromosome with length < 'x'. A distance specified as a positive\\ninteger.Commas are removed. The following suffixes are interpreted :\\nb,bp,k,kb,m,mb\\nDefault: 0"
    output_file_optional: "Output file. Optional . Default: stdout"
    partition: "When using the option --samples, use this partition Data partitioning\\nusing the SAM Read Group (see\\nhttps://gatkforums.broadinstitute.org/gatk/discussion/6472/ ) . It can\\nbe any combination of sample, library....\\nDefault: sample\\nPossible Values: [readgroup, sample, library, platform, center, sample_by_platform, sample_by_center, sample_by_platform_by_center, any]"
    percentile: "How to we bin the coverage under one pixel.\\nDefault: median\\nPossible Values: [median, average, min, max]"
    points: "Plot the coverage using points instead of areas.\\nDefault: false"
    samples: "Limit to those groups. See also --partition. Multiple separated with\\ncommas.\\nDefault: <empty string>"
    skip_contig_regex: "Skip chromosomes matching this regular expression. Ignore if blank.\\nDefault: <empty string>"
    set_style_elements: "set some css style elements. '-Dkey=value'. Undocumented.\\nSyntax: -Dkey=value\\nDefault: {}\\n"
    files: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_optional = "${in_output_file_optional}"
  }
}