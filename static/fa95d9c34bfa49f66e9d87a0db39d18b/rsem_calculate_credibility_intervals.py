from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsem_Calculate_Credibility_Intervals_V0_1_0 = CommandToolBuilder(tool="rsem_calculate_credibility_intervals", base_command=["rsem-calculate-credibility-intervals"], inputs=[ToolInput(tag="in_reference_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_imd_name", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_stat_name", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_confidence", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_ncv", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_ns_pc", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_nmb", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Calculate_Credibility_Intervals_V0_1_0().translate("wdl", allow_empty_container=True)

