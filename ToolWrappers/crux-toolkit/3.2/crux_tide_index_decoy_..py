from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Crux_Tide_Index_Decoy___V0_1_0 = CommandToolBuilder(tool="crux_tide_index_decoy_.", base_command=["crux", "tide-index", "decoy_."], inputs=[ToolInput(tag="in_crux", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tide_index", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_protein_fast_a_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crux_Tide_Index_Decoy___V0_1_0().translate("wdl", allow_empty_container=True)

