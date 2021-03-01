from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Sierrapy_Recipe_Alignment_V0_1_0 = CommandToolBuilder(tool="sierrapy_recipe_alignment", base_command=["sierrapy", "recipe", "alignment"], inputs=[ToolInput(tag="in_gap_handling", input_type=Boolean(optional=True), prefix="--gap-handling", doc=InputDocumentation(doc="[squeeze|hxb2strip]\nSpecify how you want the recipe to handle\nthe gaps.\nSpecify 'squeeze' to keep every\ngap in the result alignment; 'hxb2_strip' to\nstrip out non-HXB2 columns."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sierrapy_Recipe_Alignment_V0_1_0().translate("wdl", allow_empty_container=True)

