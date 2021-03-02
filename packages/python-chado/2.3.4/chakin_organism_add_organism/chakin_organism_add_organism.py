from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Chakin_Organism_Add_Organism_V0_1_0 = CommandToolBuilder(tool="chakin_organism_add_organism", base_command=["chakin", "organism", "add_organism"], inputs=[ToolInput(tag="in_comment", input_type=String(optional=True), prefix="--comment", doc=InputDocumentation(doc="A comment / description")), ToolInput(tag="in_genus", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_species", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_common", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_abbr", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chakin_Organism_Add_Organism_V0_1_0().translate("wdl")

