from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tripaille_Expression_Get_Biomaterials_V0_1_0 = CommandToolBuilder(tool="tripaille_expression_get_biomaterials", base_command=["tripaille", "expression", "get_biomaterials"], inputs=[ToolInput(tag="in_biomaterial_name", input_type=String(optional=True), prefix="--biomaterial_name", doc=InputDocumentation(doc="Limit query to the selected biomaterial")), ToolInput(tag="in_provider_id", input_type=String(optional=True), prefix="--provider_id", doc=InputDocumentation(doc="Limit query to the selected provider")), ToolInput(tag="in_biomaterial_id", input_type=String(optional=True), prefix="--biomaterial_id", doc=InputDocumentation(doc="Limit query to the selected biomaterial")), ToolInput(tag="in_organism_id", input_type=String(optional=True), prefix="--organism_id", doc=InputDocumentation(doc="Limit query to the selected organism")), ToolInput(tag="in_dbxref_id", input_type=String(optional=True), prefix="--dbxref_id", doc=InputDocumentation(doc="Limit query to the selected ref"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Expression_Get_Biomaterials_V0_1_0().translate("wdl", allow_empty_container=True)

