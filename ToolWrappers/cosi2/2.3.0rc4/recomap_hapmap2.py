from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory

Recomap_Hapmap2_V0_1_0 = CommandToolBuilder(tool="recomap_hapmap2", base_command=["recomap_hapmap2"], inputs=[ToolInput(tag="in_one_kg_map_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Recomap_Hapmap2_V0_1_0().translate("wdl", allow_empty_container=True)

