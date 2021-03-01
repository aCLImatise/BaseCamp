from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Samtools_Depth_V0_1_0 = CommandToolBuilder(tool="samtools_depth", base_command=["samtools", "depth"], inputs=[ToolInput(tag="in_list_positions_regions", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="list of positions or regions")), ToolInput(tag="in_list_input_bam", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="list of input BAM filenames, one per line [null]")), ToolInput(tag="in_minqlen", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="minQLen")), ToolInput(tag="in_base_quality_threshold", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="base quality threshold")), ToolInput(tag="in_mapping_quality_threshold", input_type=Int(optional=True), prefix="-Q", doc=InputDocumentation(doc="mapping quality threshold")), ToolInput(tag="in_chrfromto__region", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="<chr:from-to>    region")), ToolInput(tag="in_in_one_dot_bam", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Depth_V0_1_0().translate("wdl", allow_empty_container=True)

