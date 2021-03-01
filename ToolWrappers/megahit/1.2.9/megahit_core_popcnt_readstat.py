from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Megahit_Core_Popcnt_Readstat_V0_1_0 = CommandToolBuilder(tool="megahit_core_popcnt_readstat", base_command=["megahit_core_popcnt", "readstat"], inputs=[ToolInput(tag="in_cat", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megahit_Core_Popcnt_Readstat_V0_1_0().translate("wdl", allow_empty_container=True)

