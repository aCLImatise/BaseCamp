from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Tripaille_Expression_Add_Biomaterial_V0_1_0 = CommandToolBuilder(tool="tripaille_expression_add_biomaterial", base_command=["tripaille", "expression", "add_biomaterial"], inputs=[ToolInput(tag="in_analysis_id", input_type=Int(optional=True), prefix="--analysis_id", doc=InputDocumentation(doc="The id of the associated analysis. Required for TripalV3")), ToolInput(tag="in_no_wait", input_type=Boolean(optional=True), prefix="--no_wait", doc=InputDocumentation(doc="Do not wait for job to complete")), ToolInput(tag="in_file_type", input_type=String(), position=0, doc=InputDocumentation(doc="Add a new biomaterial file to the database"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Expression_Add_Biomaterial_V0_1_0().translate("wdl", allow_empty_container=True)

