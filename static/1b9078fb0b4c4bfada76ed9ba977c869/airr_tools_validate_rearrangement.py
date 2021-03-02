from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String

Airr_Tools_Validate_Rearrangement_V0_1_0 = CommandToolBuilder(tool="airr_tools_validate_rearrangement", base_command=["airr-tools", "validate", "rearrangement"], inputs=[ToolInput(tag="in_list_airr_rearrangement", input_type=Array(t=String(), optional=True), prefix="-a", doc=InputDocumentation(doc="A list of AIRR rearrangement files.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Airr_Tools_Validate_Rearrangement_V0_1_0().translate("wdl", allow_empty_container=True)

