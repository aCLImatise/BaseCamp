from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Iucn_Sim_Record_V0_1_0 = CommandToolBuilder(tool="iucn_sim_record", base_command=["iucn_sim", "record"], inputs=[ToolInput(tag="in_iucn_sim", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/iucn_sim:2.2.0--pyr40_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iucn_Sim_Record_V0_1_0().translate("wdl")

