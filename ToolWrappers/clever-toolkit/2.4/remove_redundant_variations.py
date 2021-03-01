from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Remove_Redundant_Variations_V0_1_0 = CommandToolBuilder(tool="remove_redundant_variations", base_command=["remove-redundant-variations"], inputs=[ToolInput(tag="in_reference_dot_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_variants_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Redundant_Variations_V0_1_0().translate("wdl", allow_empty_container=True)

