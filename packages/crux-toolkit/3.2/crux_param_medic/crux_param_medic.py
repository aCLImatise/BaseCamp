from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Crux_Param_Medic_V0_1_0 = CommandToolBuilder(tool="crux_param_medic", base_command=["crux", "param-medic"], inputs=[ToolInput(tag="in_spectrum_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crux_Param_Medic_V0_1_0().translate("wdl", allow_empty_container=True)

