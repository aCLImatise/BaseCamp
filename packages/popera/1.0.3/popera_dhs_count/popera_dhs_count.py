from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Popera_Dhs_Count_V0_1_0 = CommandToolBuilder(tool="popera_dhs_count", base_command=["popera_dhs_count"], inputs=[ToolInput(tag="in_data", input_type=File(optional=True), prefix="--data", doc=InputDocumentation(doc="data file, should be sorted bam format,\nexample=DH_sample1.bam,DH_sample2.bam")), ToolInput(tag="in_name", input_type=Int(optional=True), prefix="--name", doc=InputDocumentation(doc="NH sample name default=DH_sample1,DH_sample2")), ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="bed file, example=DH_sample1.bed,DH_sample2.bed")), ToolInput(tag="in_minlength", input_type=Int(optional=True), prefix="--minlength", doc=InputDocumentation(doc="minimum length of merged hot spots, default=5")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="threads number or cpu number, default=4"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Popera_Dhs_Count_V0_1_0().translate("wdl", allow_empty_container=True)

