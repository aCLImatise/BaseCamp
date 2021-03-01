from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Mobster_V0_1_0 = CommandToolBuilder(tool="mobster", base_command=["mobster"], inputs=[ToolInput(tag="in_properties", input_type=Boolean(optional=True), prefix="-properties", doc=InputDocumentation(doc="[properties]")), ToolInput(tag="in_in", input_type=Boolean(optional=True), prefix="-in", doc=InputDocumentation(doc="[input .bam file]. This value will override corresponding value in properties file. Multiple BAM files may be specified if seperated by a comma")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="[output prefix]. This value will override corresponding value in properties file.")), ToolInput(tag="in_sn", input_type=Boolean(optional=True), prefix="-sn", doc=InputDocumentation(doc="[sample name]. This value will override corresponding value in properties file. Multiple sample names may be specified if seperated by a comma"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="[output prefix]. This value will override corresponding value in properties file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mobster_V0_1_0().translate("wdl", allow_empty_container=True)

