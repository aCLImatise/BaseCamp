from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Set_Haploid_Region_V0_1_0 = CommandToolBuilder(tool="set_haploid_region", base_command=["set_haploid_region"], inputs=[ToolInput(tag="in_region_file", input_type=File(optional=True), prefix="--region-file", doc=InputDocumentation(doc="A bed file specifying the regions to be converted\n(required)")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="samtools reference sequence (required)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Set_Haploid_Region_V0_1_0().translate("wdl", allow_empty_container=True)

