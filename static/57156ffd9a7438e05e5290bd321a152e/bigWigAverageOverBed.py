from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Bigwigaverageoverbed_V0_1_0 = CommandToolBuilder(tool="bigWigAverageOverBed", base_command=["bigWigAverageOverBed"], inputs=[ToolInput(tag="in_stats", input_type=File(optional=True), prefix="-stats", doc=InputDocumentation(doc="- Output a collection of overall statistics to stat.ra file")), ToolInput(tag="in_bed_out", input_type=String(optional=True), prefix="-bedOut", doc=InputDocumentation(doc="- Make output bed that is echo of input bed but with mean column appended")), ToolInput(tag="in_sample_around_center", input_type=String(optional=True), prefix="-sampleAroundCenter", doc=InputDocumentation(doc="- Take sample at region N bases wide centered around bed item, rather\nthan the usual sample in the bed item.")), ToolInput(tag="in_minmax", input_type=Boolean(optional=True), prefix="-minMax", doc=InputDocumentation(doc="- include two additional columns containing the min and max observed in the area.")), ToolInput(tag="in_in_dot_bw", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bed", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_stats", output_type=File(optional=True), selector=InputSelector(input_to_select="in_stats", type_hint=File()), doc=OutputDocumentation(doc="- Output a collection of overall statistics to stat.ra file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bigwigaverageoverbed_V0_1_0().translate("wdl", allow_empty_container=True)

