from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Pyatac_Ins_V0_1_0 = CommandToolBuilder(tool="pyatac_ins", base_command=["pyatac", "ins"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="Accepts sorted BAM file")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="Regions in which to get insertions")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of cores to use")), ToolInput(tag="in_lower", input_type=Int(optional=True), prefix="--lower", doc=InputDocumentation(doc="lower limit on insert size")), ToolInput(tag="in_upper", input_type=Int(optional=True), prefix="--upper", doc=InputDocumentation(doc="upper limit on insert size")), ToolInput(tag="in_smooth", input_type=Int(optional=True), prefix="--smooth", doc=InputDocumentation(doc="smoothing window for guassian smoothing. default is no")), ToolInput(tag="in_smoothing", input_type=String(), position=0, doc=InputDocumentation(doc="--not_atac      Don't use atac offsets"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyatac_Ins_V0_1_0().translate("wdl", allow_empty_container=True)

