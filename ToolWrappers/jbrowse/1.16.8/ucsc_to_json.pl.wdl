version 1.0

task Ucsctojsonpl {
  input {
    Directory? out
    Boolean? track
    Boolean? primary_name
    Boolean? css_class_use
    Boolean? arrowhead_class
    Boolean? sub_feature_classes
    Boolean? client_config
    Int? ncl_chunk
    Boolean? compress
    String? sort_mem
    Boolean? quiet
    String? var_11
    String ucsc_to_json_do_tpl
  }
  command <<<
    ucsc_to_json_pl \
      ~{ucsc_to_json_do_tpl} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (track) then "--track" else ""} \
      ~{if (primary_name) then "--primaryName" else ""} \
      ~{if (css_class_use) then "--cssClass" else ""} \
      ~{if (arrowhead_class) then "--arrowheadClass" else ""} \
      ~{if (sub_feature_classes) then "--subfeatureClasses" else ""} \
      ~{if (client_config) then "--clientConfig" else ""} \
      ~{if defined(ncl_chunk) then ("--nclChunk " +  '"' + ncl_chunk + '"') else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if defined(sort_mem) then ("--sortMem " +  '"' + sort_mem + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(var_11) then ("--cssclass " +  '"' + var_11 + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "output directory for JSON, defaults to \\\"data/\\\""
    track: "'trackName'\\nname of the database table, e.g., \\\"knownGene\\\""
    primary_name: "'name2'\\nname of the UCSC data column (e.g. \\\"name2\\\" in the case of the UCSC\\n\\\"refGene\\\" track) to use as the primary name of features in the\\nJBrowse display. If this is set, the primaryName field will be\\nswapped with the name field in the output. For example,\\n\\\"--primaryName 'name2'\\\" will cause the output's \\\"name\\\" to be the\\nUCSC \\\"name2\\\", and \\\"name2\\\" will be the UCSC \\\"name\\\"."
    css_class_use: "'classname'\\nCSS class to use for features in this track, defaults to \\\"basic\\\""
    arrowhead_class: "'classname'\\nCSS class for arrowheads, e.g., \\\"transcript-arrowhead\\\""
    sub_feature_classes: "'{ JSON }'\\nCSS classes for each subfeature type, in JSON syntax, e.g.\\n'{\\\"CDS\\\": \\\"transcript-CDS\\\", \\\"exon\\\": \\\"transcript-exon\\\"}'"
    client_config: "'{ JSON }'\\nextra configuration for the client, in JSON syntax, e.g.\\n'{\\\"featureCss\\\": \\\"background-color: #668; height: 8px;\\\", \\\"histScale\\\": 2}'\\nFor historical reasons, this is only merged into the \\\"style\\\" section\\nof the new track's configuration."
    ncl_chunk: "Size of the individual Nested Containment List chunks. Default\\n50,000 bp."
    compress: "If passed, compress the output with gzip, making .jsonz files. This\\ncan save a lot of disk space on the server, but serving these files\\nto JBrowse requires some web server configuration."
    sort_mem: "The amount of RAM in bytes to use for sorting."
    quiet: "Do not print progress messages."
    var_11: "\\"
    ucsc_to_json_do_tpl: "\\"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}