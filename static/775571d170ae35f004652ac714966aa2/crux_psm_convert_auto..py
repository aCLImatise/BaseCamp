from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Crux_Psm_Convert_Auto__V0_1_0 = CommandToolBuilder(tool="crux_psm_convert_auto.", base_command=["crux", "psm-convert", "auto."], inputs=[ToolInput(tag="in_crux", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_psm_convert", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_psm_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crux_Psm_Convert_Auto__V0_1_0().translate("wdl", allow_empty_container=True)

