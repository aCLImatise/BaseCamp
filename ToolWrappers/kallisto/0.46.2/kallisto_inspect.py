from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Kallisto_Inspect_V0_1_0 = CommandToolBuilder(tool="kallisto_inspect", base_command=["kallisto", "inspect"], inputs=[ToolInput(tag="in_gfa", input_type=File(optional=True), prefix="--gfa", doc=InputDocumentation(doc="Filename for GFA output of T-DBG")), ToolInput(tag="in_gtf", input_type=File(optional=True), prefix="--gtf", doc=InputDocumentation(doc="Filename for GTF file")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Filename for BED output (default: index + '.bed')")), ToolInput(tag="in_index_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_gfa", output_type=File(optional=True), selector=InputSelector(input_to_select="in_gfa", type_hint=File()), doc=OutputDocumentation(doc="Filename for GFA output of T-DBG")), ToolOutput(tag="out_bed", output_type=File(optional=True), selector=InputSelector(input_to_select="in_bed", type_hint=File()), doc=OutputDocumentation(doc="Filename for BED output (default: index + '.bed')"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kallisto_Inspect_V0_1_0().translate("wdl", allow_empty_container=True)

