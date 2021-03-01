from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Rnaplot_V0_1_0 = CommandToolBuilder(tool="RNAplot", base_command=["RNAplot"], inputs=[ToolInput(tag="in_layout_type", input_type=Int(optional=True), prefix="--layout-type", doc=InputDocumentation(doc="Choose the layout algorithm. Simple radial\nlayout if 0, or naview if 1\n(default=`1')")), ToolInput(tag="in_output_format", input_type=File(optional=True), prefix="--output-format", doc=InputDocumentation(doc="|gml|xrna|svg\nSpecify output format. Available formats are:\nPostScript (ps), Graph Meta Language (gml),\nScalable Vector Graphics (svg), and XRNA save\nfile (xrna). Output filenames will end in\n'.ps' '.gml' '.svg' '.ss',\nrespectively.\n(default=`ps')")), ToolInput(tag="in_pre", input_type=File(optional=True), prefix="--pre", doc=InputDocumentation(doc="Add annotation macros to postscript file, and\nadd the postscript code in 'string' just\nbefore the code to draw the structure. This\nis an easy way to add annotation.")), ToolInput(tag="in_post", input_type=Int(optional=True), prefix="--post", doc=InputDocumentation(doc="Same as --pre but in contrast to adding the\nannotation macros. E.g to mark position 15\nwith circle use --post '15 cmark'"))], outputs=[ToolOutput(tag="out_output_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_format", type_hint=File()), doc=OutputDocumentation(doc="|gml|xrna|svg\nSpecify output format. Available formats are:\nPostScript (ps), Graph Meta Language (gml),\nScalable Vector Graphics (svg), and XRNA save\nfile (xrna). Output filenames will end in\n'.ps' '.gml' '.svg' '.ss',\nrespectively.\n(default=`ps')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnaplot_V0_1_0().translate("wdl", allow_empty_container=True)

