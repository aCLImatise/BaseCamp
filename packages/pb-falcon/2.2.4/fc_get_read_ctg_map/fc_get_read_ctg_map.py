from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fc_Get_Read_Ctg_Map_V0_1_0 = CommandToolBuilder(tool="fc_get_read_ctg_map", base_command=["fc_get_read_ctg_map"], inputs=[ToolInput(tag="in_basedir", input_type=String(optional=True), prefix="--basedir", doc=InputDocumentation(doc="the base working dir of a FALCON assembly (default: ./)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fc_Get_Read_Ctg_Map_V0_1_0().translate("wdl", allow_empty_container=True)

