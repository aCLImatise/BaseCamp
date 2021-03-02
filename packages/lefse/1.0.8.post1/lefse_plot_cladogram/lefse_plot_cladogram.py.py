from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Lefse_Plot_Cladogram_Py_V0_1_0 = CommandToolBuilder(tool="lefse_plot_cladogram.py", base_command=["lefse-plot_cladogram.py"], inputs=[ToolInput(tag="in_siblings_connector_width", input_type=String(optional=True), prefix="--siblings_connector_width", doc=InputDocumentation(doc="set the color of the background")), ToolInput(tag="in_colored_labels", input_type=String(optional=True), prefix="--colored_labels", doc=InputDocumentation(doc="draw the label with class color (1) or in black (0)")), ToolInput(tag="in_class_legend_font_size", input_type=File(optional=True), prefix="--class_legend_font_size", doc=InputDocumentation(doc="the format for the output file")), ToolInput(tag="in_input_file", input_type=String(), position=0, doc=InputDocumentation(doc="tab delimited input file")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc="the file for the output image"))], outputs=[ToolOutput(tag="out_class_legend_font_size", output_type=File(optional=True), selector=InputSelector(input_to_select="in_class_legend_font_size", type_hint=File()), doc=OutputDocumentation(doc="the format for the output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lefse_Plot_Cladogram_Py_V0_1_0().translate("wdl", allow_empty_container=True)

