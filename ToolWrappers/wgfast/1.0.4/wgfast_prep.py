from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Wgfast_Prep_V0_1_0 = CommandToolBuilder(tool="wgfast_prep", base_command=["wgfast_prep"], inputs=[ToolInput(tag="in_snp_matrix", input_type=File(optional=True), prefix="--snp_matrix", doc=InputDocumentation(doc="path to NASP snp_matrix [REQUIRED]")), ToolInput(tag="in_model", input_type=String(optional=True), prefix="--model", doc=InputDocumentation(doc="model for RAxML, defaults to ASC_GTRGAMMA, can also be\nGTRGAMMA")), ToolInput(tag="in_processors", input_type=Int(optional=True), prefix="--processors", doc=InputDocumentation(doc="number of processors to use with GTRGAMMA, defaults to\n4\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wgfast_Prep_V0_1_0().translate("wdl", allow_empty_container=True)

