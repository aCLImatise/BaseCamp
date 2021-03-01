from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int

Plot_Go_Term_Py_V0_1_0 = CommandToolBuilder(tool="plot_go_term.py", base_command=["plot_go_term.py"], inputs=[ToolInput(tag="in_description", input_type=Boolean(optional=True), prefix="--description", doc=InputDocumentation(doc="Write term descriptions to stdout from the obo file\nspecified in args")), ToolInput(tag="in_term", input_type=String(optional=True), prefix="--term", doc=InputDocumentation(doc="Write the parents and children of the query term")), ToolInput(tag="in_engine", input_type=String(optional=True), prefix="--engine", doc=InputDocumentation(doc="Graph plot engine, must be one of pygraphviz|pydot\n[default: pygraphviz]")), ToolInput(tag="in_gml", input_type=Boolean(optional=True), prefix="--gml", doc=InputDocumentation(doc="Write GML output (for Cytoscape) [default: none]")), ToolInput(tag="in_disable_draw_parents", input_type=Boolean(optional=True), prefix="--disable-draw-parents", doc=InputDocumentation(doc="Do not draw parents of the query term")), ToolInput(tag="in_disable_draw_children", input_type=Boolean(optional=True), prefix="--disable-draw-children", doc=InputDocumentation(doc="Do not draw children of the query term")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output filename, suffix is image format, common\nformats e.g. pdf|svg|png|jpg|... [default:\nGO_lineage.pdf]")), ToolInput(tag="in_dpi", input_type=Int(optional=True), prefix="--dpi", doc=InputDocumentation(doc="Output figure dpi, ignored by vector image formats\nlike svg and pdf [default: 96]\n")), ToolInput(tag="in_obo_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output filename, suffix is image format, common\nformats e.g. pdf|svg|png|jpg|... [default:\nGO_lineage.pdf]"))], container="quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Go_Term_Py_V0_1_0().translate("wdl")

