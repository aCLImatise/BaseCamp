from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Amptk_Summarize_V0_1_0 = CommandToolBuilder(tool="amptk_summarize", base_command=["amptk", "summarize"], inputs=[ToolInput(tag="in_table", input_type=Boolean(optional=True), prefix="--table", doc=InputDocumentation(doc="OTU Table containing Taxonomy information (Required)")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc="Base name for output files. Default: amptk-summary")), ToolInput(tag="in_counts", input_type=Boolean(optional=True), prefix="--counts", doc=InputDocumentation(doc="Method to count taxa. Default: binary [binary,actual]")), ToolInput(tag="in_graphs", input_type=Boolean(optional=True), prefix="--graphs", doc=InputDocumentation(doc="Create stacked Bar Graphs.")), ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc="Image output format. Default: eps [eps, svg, png, pdf]")), ToolInput(tag="in_percent", input_type=Boolean(optional=True), prefix="--percent", doc=InputDocumentation(doc="Convert numbers to Percent for Graphs. Default: off")), ToolInput(tag="in_font_size", input_type=Boolean(optional=True), prefix="--font_size", doc=InputDocumentation(doc="Adjust font size for X-axis sample lables. Default: 8")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/amptk:1.5.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amptk_Summarize_V0_1_0().translate("wdl")

