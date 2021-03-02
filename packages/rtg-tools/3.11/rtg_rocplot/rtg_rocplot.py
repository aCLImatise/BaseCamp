from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Rtg_Rocplot_V0_1_0 = CommandToolBuilder(tool="rtg_rocplot", base_command=["rtg", "rocplot"], inputs=[ToolInput(tag="in_curve", input_type=File(optional=True), prefix="--curve", doc=InputDocumentation(doc="ROC data file with title optionally specified\n(path[=title]). May be specified 0 or more times")), ToolInput(tag="in_png", input_type=File(optional=True), prefix="--png", doc=InputDocumentation(doc="if set, output a PNG image to the given file")), ToolInput(tag="in_svg", input_type=File(optional=True), prefix="--svg", doc=InputDocumentation(doc="if set, output a SVG image to the given file")), ToolInput(tag="in_zoom", input_type=String(optional=True), prefix="--zoom", doc=InputDocumentation(doc="show a zoomed view with the given coordinates,\nsupplied in the form <xmax>,<ymax> or\n<xmin>,<ymin>,<xmax>,<ymax>")), ToolInput(tag="in_hide_side_pane", input_type=Boolean(optional=True), prefix="--hide-sidepane", doc=InputDocumentation(doc="if set, hide the side pane from the GUI on")), ToolInput(tag="in_line_width", input_type=Int(optional=True), prefix="--line-width", doc=InputDocumentation(doc="sets the plot line width (Default is 2)")), ToolInput(tag="in_precision_sensitivity", input_type=String(optional=True), prefix="--precision-sensitivity", doc=InputDocumentation(doc="set, plot precision vs sensitivity rather than")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc="title for the plot")), ToolInput(tag="in_startup", input_type=String(), position=0, doc=InputDocumentation(doc="--interpolate           if set, interpolate curves at regular intervals")), ToolInput(tag="in_roc", input_type=String(), position=1, doc=InputDocumentation(doc="--scores                if set, show scores on the plot"))], outputs=[ToolOutput(tag="out_png", output_type=File(optional=True), selector=InputSelector(input_to_select="in_png", type_hint=File()), doc=OutputDocumentation(doc="if set, output a PNG image to the given file")), ToolOutput(tag="out_svg", output_type=File(optional=True), selector=InputSelector(input_to_select="in_svg", type_hint=File()), doc=OutputDocumentation(doc="if set, output a SVG image to the given file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtg_Rocplot_V0_1_0().translate("wdl", allow_empty_container=True)

