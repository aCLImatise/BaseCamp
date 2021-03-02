from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Knot_Analysis_V0_1_0 = CommandToolBuilder(tool="knot.analysis", base_command=["knot.analysis"], inputs=[ToolInput(tag="in_input_prefix", input_type=String(optional=True), prefix="--input_prefix", doc=InputDocumentation(doc="prefix of knot output")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="path where report was write")), ToolInput(tag="in_classification", input_type=Boolean(optional=True), prefix="--classification", doc=InputDocumentation(doc="Add path classification in report")), ToolInput(tag="in_hamilton_path", input_type=Boolean(optional=True), prefix="--hamilton-path", doc=InputDocumentation(doc="Add hamilton path in report")), ToolInput(tag="in_knot_dot_analysis_dot_generate_report", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Knot_Analysis_V0_1_0().translate("wdl")

