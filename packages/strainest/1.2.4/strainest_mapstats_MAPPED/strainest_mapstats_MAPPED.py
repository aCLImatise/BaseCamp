from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Strainest_Mapstats_Mapped_V0_1_0 = CommandToolBuilder(tool="strainest_mapstats_MAPPED", base_command=["strainest", "mapstats", "MAPPED"], inputs=[ToolInput(tag="in_examples", input_type=String(), position=0, doc=InputDocumentation(doc="strainest mapstats mapped.fna stats"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strainest_Mapstats_Mapped_V0_1_0().translate("wdl", allow_empty_container=True)

