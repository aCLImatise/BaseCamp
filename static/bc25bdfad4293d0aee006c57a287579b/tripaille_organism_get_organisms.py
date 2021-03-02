from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tripaille_Organism_Get_Organisms_V0_1_0 = CommandToolBuilder(tool="tripaille_organism_get_organisms", base_command=["tripaille", "organism", "get_organisms"], inputs=[ToolInput(tag="in_organism_id", input_type=String(optional=True), prefix="--organism_id", doc=InputDocumentation(doc="An organism ID")), ToolInput(tag="in_genus", input_type=String(optional=True), prefix="--genus", doc=InputDocumentation(doc="The genus of the organism")), ToolInput(tag="in_species", input_type=String(optional=True), prefix="--species", doc=InputDocumentation(doc="The species of the organism")), ToolInput(tag="in_common", input_type=String(optional=True), prefix="--common", doc=InputDocumentation(doc="The common name of the organism")), ToolInput(tag="in_abbr", input_type=String(optional=True), prefix="--abbr", doc=InputDocumentation(doc="The abbreviation of the organism")), ToolInput(tag="in_comment", input_type=String(optional=True), prefix="--comment", doc=InputDocumentation(doc="A comment / description"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Organism_Get_Organisms_V0_1_0().translate("wdl", allow_empty_container=True)

