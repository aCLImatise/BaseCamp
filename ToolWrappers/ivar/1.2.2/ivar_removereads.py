from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Ivar_Removereads_V0_1_0 = CommandToolBuilder(tool="ivar_removereads", base_command=["ivar", "removereads"], inputs=[ToolInput(tag="in_required_input_bam", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="(Required) Input BAM file  trimmed with ‘ivar trim’. Must be sorted which can be done using `samtools sort`.")), ToolInput(tag="in_required_text_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="(Required) Text file with primer indices separated by spaces. This is the output of `getmasked` command.")), ToolInput(tag="in_required_bed_file", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="(Required) BED file with primer sequences and positions.")), ToolInput(tag="in_required_prefix_filtered", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="(Required) Prefix for the output filtered BAM file"))], outputs=[ToolOutput(tag="out_required_text_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_required_text_file", type_hint=File()), doc=OutputDocumentation(doc="(Required) Text file with primer indices separated by spaces. This is the output of `getmasked` command.")), ToolOutput(tag="out_required_prefix_filtered", output_type=File(optional=True), selector=InputSelector(input_to_select="in_required_prefix_filtered", type_hint=File()), doc=OutputDocumentation(doc="(Required) Prefix for the output filtered BAM file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ivar_Removereads_V0_1_0().translate("wdl", allow_empty_container=True)

