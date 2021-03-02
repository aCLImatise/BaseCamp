from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Chakin_Organism_Delete_Organisms_V0_1_0 = CommandToolBuilder(tool="chakin_organism_delete_organisms", base_command=["chakin", "organism", "delete_organisms"], inputs=[ToolInput(tag="in_organism_id", input_type=Int(optional=True), prefix="--organism_id", doc=InputDocumentation(doc="organism_id filter")), ToolInput(tag="in_genus", input_type=String(optional=True), prefix="--genus", doc=InputDocumentation(doc="genus filter")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="species filter")), ToolInput(tag="in_common", input_type=String(optional=True), prefix="--common", doc=InputDocumentation(doc="common filter")), ToolInput(tag="in_abbr", input_type=String(optional=True), prefix="--abbr", doc=InputDocumentation(doc="abbr filter")), ToolInput(tag="in_comment", input_type=String(optional=True), prefix="--comment", doc=InputDocumentation(doc="comment filter")), ToolInput(tag="in_none", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chakin_Organism_Delete_Organisms_V0_1_0().translate("wdl")

