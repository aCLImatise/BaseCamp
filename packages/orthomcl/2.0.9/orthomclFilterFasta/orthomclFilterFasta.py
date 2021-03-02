from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Orthomclfilterfasta_V0_1_0 = CommandToolBuilder(tool="orthomclFilterFasta", base_command=["orthomclFilterFasta"], inputs=[ToolInput(tag="in_input_dir", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_min_length", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_max_percent_stops", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_good_proteins_file", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orthomclfilterfasta_V0_1_0().translate("wdl", allow_empty_container=True)

