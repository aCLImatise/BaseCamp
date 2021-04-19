from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Predex_Comparison_V0_1_0 = CommandToolBuilder(tool="predex_comparison", base_command=["predex", "comparison"], inputs=[ToolInput(tag="in_design", input_type=String(optional=True), prefix="--design", doc=InputDocumentation(doc="Design matrix with sample data")), ToolInput(tag="in_column", input_type=String(optional=True), prefix="--column", doc=InputDocumentation(doc="Column name to make comparisons with")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory (default = current)"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory (default = current)"))], container="quay.io/biocontainers/predex:0.9.3--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Predex_Comparison_V0_1_0().translate("wdl")

