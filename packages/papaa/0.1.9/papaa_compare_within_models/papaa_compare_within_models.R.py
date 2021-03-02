from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Papaa_Compare_Within_Models_R_V0_1_0 = CommandToolBuilder(tool="papaa_compare_within_models.R", base_command=["papaa_compare_within_models.R"], inputs=[ToolInput(tag="in_pan_can_model", input_type=String(optional=True), prefix="--pancan_model", doc=InputDocumentation(doc="location of pancan model")), ToolInput(tag="in_alt_model", input_type=String(optional=True), prefix="--alt_model", doc=InputDocumentation(doc="location of alt gene model"))], outputs=[], container="quay.io/biocontainers/papaa:0.1.9--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Papaa_Compare_Within_Models_R_V0_1_0().translate("wdl")

