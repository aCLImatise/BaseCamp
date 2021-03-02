from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, String

Plasflow_Py_V0_1_0 = CommandToolBuilder(tool="PlasFlow.py", base_command=["PlasFlow.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input fasta file with sequences to classify (required)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file with classification results (required)")), ToolInput(tag="in_threshold", input_type=Float(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Threshold for probability filtering (default=0.7)")), ToolInput(tag="in_labels", input_type=File(optional=True), prefix="--labels", doc=InputDocumentation(doc="Custom labels file")), ToolInput(tag="in_models", input_type=String(optional=True), prefix="--models", doc=InputDocumentation(doc="Custom models localization"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file with classification results (required)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plasflow_Py_V0_1_0().translate("wdl", allow_empty_container=True)

