from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cactus_Stripuniqueids_V0_1_0 = CommandToolBuilder(tool="cactus_stripUniqueIDs", base_command=["cactus_stripUniqueIDs"], inputs=[ToolInput(tag="in_cactus_disk", input_type=String(optional=True), prefix="--cactusDisk", doc=InputDocumentation(doc="must be provided"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cactus_Stripuniqueids_V0_1_0().translate("wdl", allow_empty_container=True)

