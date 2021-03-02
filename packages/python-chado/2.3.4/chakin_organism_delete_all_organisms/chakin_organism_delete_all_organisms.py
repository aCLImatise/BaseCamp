from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Chakin_Organism_Delete_All_Organisms_V0_1_0 = CommandToolBuilder(tool="chakin_organism_delete_all_organisms", base_command=["chakin", "organism", "delete_all_organisms"], inputs=[ToolInput(tag="in_confirm", input_type=Boolean(optional=True), prefix="--confirm", doc=InputDocumentation(doc="Confirm that you really do want to delete ALL of the organisms.")), ToolInput(tag="in_none", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/python-chado:2.3.4--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chakin_Organism_Delete_All_Organisms_V0_1_0().translate("wdl")

