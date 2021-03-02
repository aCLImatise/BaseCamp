from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Float, File, Boolean

Htsbox_Mapchk_V0_1_0 = CommandToolBuilder(tool="htsbox_mapchk", base_command=["htsbox", "mapchk"], inputs=[ToolInput(tag="in_region", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="region [null]")), ToolInput(tag="in_threshold_high_quality", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="threshold for HIGH quality [20]")), ToolInput(tag="in_skip_sites_excessive", input_type=Float(optional=True), prefix="-f", doc=InputDocumentation(doc="skip sites with excessive non-ref bases [0.35]")), ToolInput(tag="in_bed_file_include", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="BED file to include []")), ToolInput(tag="in_min_nonref_count", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="min non-ref count [0]")), ToolInput(tag="in_one", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc="exclude read1")), ToolInput(tag="in_two", input_type=Boolean(optional=True), prefix="-2", doc=InputDocumentation(doc="exclude read2")), ToolInput(tag="in_aln_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htsbox_Mapchk_V0_1_0().translate("wdl", allow_empty_container=True)

