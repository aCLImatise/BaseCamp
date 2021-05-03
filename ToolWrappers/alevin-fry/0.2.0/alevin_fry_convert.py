from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Alevin_Fry_Convert_V0_1_0 = CommandToolBuilder(tool="alevin_fry_convert", base_command=["alevin-fry", "convert"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="input SAM/BAM file")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output RAD file")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use for processing [default: 2]"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output RAD file"))], container="quay.io/biocontainers/alevin-fry:0.2.0--h7d875b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alevin_Fry_Convert_V0_1_0().translate("wdl")

