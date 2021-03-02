from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Vk_Calc_V0_1_0 = CommandToolBuilder(tool="vk_calc", base_command=["vk", "calc"], inputs=[ToolInput(tag="in_frequency", input_type=Boolean(optional=True), prefix="--frequency", doc=InputDocumentation(doc="")), ToolInput(tag="in_genotypes", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sample_hom_gt", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_spectrum", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/vcfkit:0.2.9--pyh5bfb8f1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vk_Calc_V0_1_0().translate("wdl")

