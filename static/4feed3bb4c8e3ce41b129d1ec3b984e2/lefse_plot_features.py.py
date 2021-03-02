from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, File, String

Lefse_Plot_Features_Py_V0_1_0 = CommandToolBuilder(tool="lefse_plot_features.py", base_command=["lefse-plot_features.py"], inputs=[ToolInput(tag="in_height", input_type=Float(optional=True), prefix="--height", doc=InputDocumentation(doc="set maximum y limit (-1.0 means automatic limit)")), ToolInput(tag="in_bot", input_type=Float(optional=True), prefix="--bot", doc=InputDocumentation(doc="set minimum y limit (default 0.0, -1.0 means automatic\nlimit)")), ToolInput(tag="in_title_font_size", input_type=Int(optional=True), prefix="--title_font_size", doc=InputDocumentation(doc="unused")), ToolInput(tag="in_format", input_type=File(optional=True), prefix="--format", doc=InputDocumentation(doc="the format for the output file")), ToolInput(tag="in_wheter_plot_features", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="wheter to plot all features (all), only those\ndifferentially abundant according to LEfSe or only one\n(the one given with --feature_name)")), ToolInput(tag="in_feature_name", input_type=String(optional=True), prefix="--feature_name", doc=InputDocumentation(doc="The name of the feature to plot (levels separated by\n.)")), ToolInput(tag="in_feature_num", input_type=Int(optional=True), prefix="--feature_num", doc=InputDocumentation(doc="The number of the feature to plot")), ToolInput(tag="in_background_color", input_type=String(optional=True), prefix="--background_color", doc=InputDocumentation(doc="set the color of the background")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc="the file for the output (the zip file if an archive is\nrequired, the output directory otherwise)"))], outputs=[ToolOutput(tag="out_format", output_type=File(optional=True), selector=InputSelector(input_to_select="in_format", type_hint=File()), doc=OutputDocumentation(doc="the format for the output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lefse_Plot_Features_Py_V0_1_0().translate("wdl", allow_empty_container=True)

