from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Rtg_Popsim_V0_1_0 = CommandToolBuilder(tool="rtg_popsim", base_command=["rtg", "popsim"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output VCF file name")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="SDF containing the reference genome")), ToolInput(tag="in_no_gzip", input_type=Boolean(optional=True), prefix="--no-gzip", doc=InputDocumentation(doc="do not gzip the output")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="seed for the random number generator"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output VCF file name"))], container="quay.io/biocontainers/rtg-tools:3.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtg_Popsim_V0_1_0().translate("wdl")

