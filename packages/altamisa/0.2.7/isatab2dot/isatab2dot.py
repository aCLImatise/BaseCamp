from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Isatab2Dot_V0_1_0 = CommandToolBuilder(tool="isatab2dot", base_command=["isatab2dot"], inputs=[ToolInput(tag="in_investigation_file", input_type=File(optional=True), prefix="--investigation-file", doc=InputDocumentation(doc="Path to investigation file")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Path to output file, stdout ('-') by default\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Path to output file, stdout ('-') by default\n"))], container="quay.io/biocontainers/altamisa:0.2.7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isatab2Dot_V0_1_0().translate("wdl")

