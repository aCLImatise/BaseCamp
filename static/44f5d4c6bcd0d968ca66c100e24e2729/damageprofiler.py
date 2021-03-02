from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Damageprofiler_V0_1_0 = CommandToolBuilder(tool="damageprofiler", base_command=["damageprofiler"], inputs=[ToolInput(tag="in_species_list", input_type=File(optional=True), prefix="--specieslist", doc=InputDocumentation(doc="<SPECIES LIST>")), ToolInput(tag="in_mis_incorporations", input_type=String(), position=0, doc=InputDocumentation(doc="-title,--title <TITLE>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Damageprofiler_V0_1_0().translate("wdl", allow_empty_container=True)

