from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Kat_Plot_Cold_V0_1_0 = CommandToolBuilder(tool="kat_plot_cold", base_command=["kat_plot_cold"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The path to the output file.")), ToolInput(tag="in_output_type", input_type=File(optional=True), prefix="--output_type", doc=InputDocumentation(doc="The plot file type to create (default is based on\ngiven output name).")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc="Title for plot")), ToolInput(tag="in_y_max", input_type=String(optional=True), prefix="--y_max", doc=InputDocumentation(doc="Maximum value for y-axis")), ToolInput(tag="in_width", input_type=String(optional=True), prefix="--width", doc=InputDocumentation(doc="Width of canvas")), ToolInput(tag="in_height", input_type=String(optional=True), prefix="--height", doc=InputDocumentation(doc="Height of canvas")), ToolInput(tag="in_dpi", input_type=String(optional=True), prefix="--dpi", doc=InputDocumentation(doc="Resolution in dots per inch of output graphic.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print extra information"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The path to the output file.")), ToolOutput(tag="out_output_type", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_type", type_hint=File()), doc=OutputDocumentation(doc="The plot file type to create (default is based on\ngiven output name)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kat_Plot_Cold_V0_1_0().translate("wdl", allow_empty_container=True)

