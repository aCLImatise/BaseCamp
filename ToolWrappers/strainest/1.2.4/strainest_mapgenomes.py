from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Strainest_Mapgenomes_V0_1_0 = CommandToolBuilder(tool="strainest_mapgenomes", base_command=["strainest", "mapgenomes"], inputs=[ToolInput(tag="in_genomes_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_mapped", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Strainest_Mapgenomes_V0_1_0().translate("wdl", allow_empty_container=True)

