version 1.0

task PlotGoTerm.py {
  input {
    Boolean descriptionDescription
    String termTerm
    String engineEngine
    Boolean gmlGml
    Boolean disableDisableDrawParents
    Boolean disableDisableDrawChildren
    String? oboOboFile
  }
  command <<<
    plot_go_term.py \
      ~{oboOboFile} \
      ~{true="--description" false="" descriptionDescription} \
      ~{if defined(termTerm) then ("--term " +  '"' + termTerm + '"') else ""} \
      ~{if defined(engineEngine) then ("--engine " +  '"' + engineEngine + '"') else ""} \
      ~{true="--gml" false="" gmlGml} \
      ~{true="--disable-draw-parents" false="" disableDisableDrawParents} \
      ~{true="--disable-draw-children" false="" disableDisableDrawChildren}
  >>>
}