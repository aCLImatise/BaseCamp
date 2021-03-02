from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Tobias_Mergepdf_V0_1_0 = CommandToolBuilder(tool="TOBIAS_MergePDF", base_command=["TOBIAS", "MergePDF"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="[ [ ...]]  PDF files to join")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to output file (default: ./merged.pdf)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to output file (default: ./merged.pdf)"))], container="quay.io/biocontainers/tobias:0.12.9--py36h29c9776_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tobias_Mergepdf_V0_1_0().translate("wdl")

