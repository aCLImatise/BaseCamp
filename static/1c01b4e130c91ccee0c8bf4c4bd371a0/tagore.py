from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Tagore_V0_1_0 = CommandToolBuilder(tool="tagore", base_command=["tagore"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input BED-like file")), ToolInput(tag="in_p", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="[output file prefix], --prefix [output file prefix]  Output prefix [Default: 'out']")), ToolInput(tag="in_b", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="[hg78/hg38], --build [hg78/hg38]                     Human genome build to use [Default: hg38]")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite output files if they exist already")), ToolInput(tag="in_of_mt", input_type=Boolean(optional=True), prefix="-ofmt", doc=InputDocumentation(doc="[png/pdf], --oformat [png/pdf]                    Output format for conversion (pdf requires rsvg-convert)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Display verbose output")), ToolInput(tag="in_output", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_prefix", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_p", output_type=File(optional=True), selector=InputSelector(input_to_select="in_p", type_hint=File()), doc=OutputDocumentation(doc="[output file prefix], --prefix [output file prefix]  Output prefix [Default: 'out']"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tagore_V0_1_0().translate("wdl", allow_empty_container=True)

