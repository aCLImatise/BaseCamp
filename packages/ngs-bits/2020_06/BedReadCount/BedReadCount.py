from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Bedreadcount_V0_1_0 = CommandToolBuilder(tool="BedReadCount", base_command=["BedReadCount"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="-bam", doc=InputDocumentation(doc="Input BAM file.")), ToolInput(tag="in_min_mapq", input_type=Int(optional=True), prefix="-min_mapq", doc=InputDocumentation(doc="Minimum mapping quality.\nDefault value: '1'")), ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input BED file (note that overlapping regions will be merged before processing). If unset, reads from STDIN.\nDefault value: ''")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="-out", doc=InputDocumentation(doc="Output BED file. If unset, writes to STDOUT.\nDefault value: ''")), ToolInput(tag="in_changelog", input_type=Boolean(optional=True), prefix="--changelog", doc=InputDocumentation(doc="Prints changeloge and exits.")), ToolInput(tag="in_tdx", input_type=Boolean(optional=True), prefix="--tdx", doc=InputDocumentation(doc="Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output BED file. If unset, writes to STDOUT.\nDefault value: ''"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedreadcount_V0_1_0().translate("wdl", allow_empty_container=True)

