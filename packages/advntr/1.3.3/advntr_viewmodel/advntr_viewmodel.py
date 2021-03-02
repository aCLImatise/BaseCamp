from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Advntr_Viewmodel_V0_1_0 = CommandToolBuilder(tool="advntr_viewmodel", base_command=["advntr", "viewmodel"], inputs=[ToolInput(tag="in_gene", input_type=String(optional=True), prefix="--gene", doc=InputDocumentation(doc="comma-separated list of Gene Names")), ToolInput(tag="in_pattern", input_type=Int(optional=True), prefix="--pattern", doc=InputDocumentation(doc="repeating pattern of VNTR in forward (5' to 3') direction")), ToolInput(tag="in_models", input_type=File(optional=True), prefix="--models", doc=InputDocumentation(doc="VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Advntr_Viewmodel_V0_1_0().translate("wdl", allow_empty_container=True)

