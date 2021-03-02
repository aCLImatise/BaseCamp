from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int, Array

Filterout_Bam_V0_1_0 = CommandToolBuilder(tool="filterout_bam", base_command=["filterout-bam"], inputs=[ToolInput(tag="in_write_output_bam", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Write output BAM compressed [uncompressed]")), ToolInput(tag="in_select_discard_alignment", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Select and discard alignment records matching FLAGS")), ToolInput(tag="in_write_bam_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Write output BAM file to FILE rather than standard output")), ToolInput(tag="in_select_discard_records_mapping", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="Select and discard records with mapping quality less than NUM")), ToolInput(tag="in_original_mapping_quality", input_type=Array(t=String(), optional=True), prefix="-Q", doc=InputDocumentation(doc="with original mapping quality (ZM:i) less than NUM")), ToolInput(tag="in_select_discard_records_more", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Select and discard records with more than NUM suboptimal hits")), ToolInput(tag="in_more_num_original", input_type=Array(t=String(), optional=True), prefix="-S", doc=InputDocumentation(doc="with more than NUM original suboptimal hits (Z1:i)")), ToolInput(tag="in_display_file_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display file information and statistics"))], outputs=[ToolOutput(tag="out_write_bam_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_write_bam_file", type_hint=File()), doc=OutputDocumentation(doc="Write output BAM file to FILE rather than standard output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filterout_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

