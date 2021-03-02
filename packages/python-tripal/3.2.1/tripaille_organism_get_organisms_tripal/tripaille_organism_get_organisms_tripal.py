from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Tripaille_Organism_Get_Organisms_Tripal_V0_1_0 = CommandToolBuilder(tool="tripaille_organism_get_organisms_tripal", base_command=["tripaille", "organism", "get_organisms_tripal"], inputs=[ToolInput(tag="in_organism_id", input_type=Int(optional=True), prefix="--organism_id", doc=InputDocumentation(doc="An organism entity ID"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Organism_Get_Organisms_Tripal_V0_1_0().translate("wdl", allow_empty_container=True)

