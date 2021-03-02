from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Gdtools_Not_Evidence_V0_1_0 = CommandToolBuilder(tool="gdtools_NOT_EVIDENCE", base_command=["gdtools", "NOT-EVIDENCE"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output GD file (DEFAULT=output.gd)")), ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="--id", doc=InputDocumentation(doc="Reorder IDs (Flag)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose Mode (Flag)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output GD file (DEFAULT=output.gd)"))], container="quay.io/biocontainers/breseq:0.35.5--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gdtools_Not_Evidence_V0_1_0().translate("wdl")

