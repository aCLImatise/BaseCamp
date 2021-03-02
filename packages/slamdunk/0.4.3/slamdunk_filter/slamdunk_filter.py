from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, Int, String

Slamdunk_Filter_V0_1_0 = CommandToolBuilder(tool="slamdunk_filter", base_command=["slamdunk", "filter"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--outputDir", doc=InputDocumentation(doc="Output directory for mapped BAM files.")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="BED file, overrides MQ filter to 0")), ToolInput(tag="in_min_mq", input_type=Int(optional=True), prefix="--min-mq", doc=InputDocumentation(doc="Minimum mapping quality (default: 2)")), ToolInput(tag="in_min_identity", input_type=Int(optional=True), prefix="--min-identity", doc=InputDocumentation(doc="Minimum alignment identity (default: 0.95)")), ToolInput(tag="in_max_nm", input_type=Int(optional=True), prefix="--max-nm", doc=InputDocumentation(doc="Maximum NM for alignments (default: -1)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Thread number (default: 1)\n")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Bam file(s)"))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for mapped BAM files."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Slamdunk_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

