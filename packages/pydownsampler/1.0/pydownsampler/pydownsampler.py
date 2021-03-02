from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Pydownsampler_V0_1_0 = CommandToolBuilder(tool="pydownsampler", base_command=["pydownsampler"], inputs=[ToolInput(tag="in_down_coverage", input_type=Boolean(optional=True), prefix="--downcoverage", doc=InputDocumentation(doc="The coverage you want to downsample to (Required argument)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output filename prefix (Optional)")), ToolInput(tag="in_coverage", input_type=File(optional=True), prefix="--coverage", doc=InputDocumentation(doc="Print out average coverage for file")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="BAM/SAM/CRAM file to be downsampled (Required argument)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output filename prefix (Optional)")), ToolOutput(tag="out_coverage", output_type=File(optional=True), selector=InputSelector(input_to_select="in_coverage", type_hint=File()), doc=OutputDocumentation(doc="Print out average coverage for file"))], container="quay.io/biocontainers/pydownsampler:1.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pydownsampler_V0_1_0().translate("wdl")

