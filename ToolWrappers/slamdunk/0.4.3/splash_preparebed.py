from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory

Splash_Preparebed_V0_1_0 = CommandToolBuilder(tool="splash_preparebed", base_command=["splash", "preparebed"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="BED file")), ToolInput(tag="in_read_length", input_type=Int(optional=True), prefix="--read-length", doc=InputDocumentation(doc="All UTRs short than the read length are removed.")), ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--outputDir", doc=InputDocumentation(doc="Output directory for mapped BAM files.\n"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for mapped BAM files.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splash_Preparebed_V0_1_0().translate("wdl", allow_empty_container=True)

