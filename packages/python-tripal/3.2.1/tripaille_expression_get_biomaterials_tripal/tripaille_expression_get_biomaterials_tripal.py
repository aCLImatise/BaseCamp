from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Tripaille_Expression_Get_Biomaterials_Tripal_V0_1_0 = CommandToolBuilder(tool="tripaille_expression_get_biomaterials_tripal", base_command=["tripaille", "expression", "get_biomaterials_tripal"], inputs=[ToolInput(tag="in_biomaterial_id", input_type=Int(optional=True), prefix="--biomaterial_id", doc=InputDocumentation(doc="A biomaterial entity ID"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Expression_Get_Biomaterials_Tripal_V0_1_0().translate("wdl", allow_empty_container=True)

