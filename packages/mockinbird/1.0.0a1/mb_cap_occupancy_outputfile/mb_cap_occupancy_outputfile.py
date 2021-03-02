from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mb_Cap_Occupancy_Outputfile_V0_1_0 = CommandToolBuilder(tool="mb_cap_occupancy_outputfile", base_command=["mb-cap-occupancy", "outputfile"], inputs=[ToolInput(tag="in_quantile", input_type=String(optional=True), prefix="--quantile", doc=InputDocumentation(doc="")), ToolInput(tag="in_mb_cap_occupancy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Cap_Occupancy_Outputfile_V0_1_0().translate("wdl", allow_empty_container=True)

