from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Sketchy_Utils_Plot_Kraken_V0_1_0 = CommandToolBuilder(tool="sketchy_utils_plot_kraken", base_command=["sketchy", "utils", "plot-kraken"], inputs=[ToolInput(tag="in_report", input_type=File(optional=True), prefix="--report", doc=InputDocumentation(doc="Path or file glob to tax report files")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Output prefix for plot file.")), ToolInput(tag="in_level", input_type=String(optional=True), prefix="--level", doc=InputDocumentation(doc="Taxonomic level to assess: species [S]")), ToolInput(tag="in_top", input_type=Int(optional=True), prefix="--top", doc=InputDocumentation(doc="Show top taxonomic levels in plots [10]")), ToolInput(tag="in_color", input_type=String(optional=True), prefix="--color", doc=InputDocumentation(doc="Color palette for central donut plot.")), ToolInput(tag="in_title", input_type=String(optional=True), prefix="--title", doc=InputDocumentation(doc="Row titles for center plot, comma separated string.")), ToolInput(tag="in_sub", input_type=Boolean(optional=True), prefix="--sub", doc=InputDocumentation(doc="Add subplot titles for each column."))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="Output prefix for plot file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sketchy_Utils_Plot_Kraken_V0_1_0().translate("wdl", allow_empty_container=True)

