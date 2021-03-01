from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bam_Uniq_Pl_V0_1_0 = CommandToolBuilder(tool="bam_uniq.pl", base_command=["bam_uniq.pl"], inputs=[ToolInput(tag="in_bam", input_type=Boolean(optional=True), prefix="--bam", doc=InputDocumentation(doc="BAM file to extract unique and multi mappers from")), ToolInput(tag="in_band", input_type=Boolean(optional=True), prefix="--band", doc=InputDocumentation(doc="Process bands of (supposedly paired-end) reads sharing the same\nname/id from a name-sorted BAM file. The reads of band are\nconsidered unique mappers if and only if all of them are unique\nmappers. In all other cases, all reads of a band are considered\nmulti mappers. In a paired-end context this means that e.g. a read\nmap uniquely, but its mate is a multi-mapper, both will be\nconsideres multi-mappers.")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output path")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints the manual page and exits\n"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output path"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Uniq_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

