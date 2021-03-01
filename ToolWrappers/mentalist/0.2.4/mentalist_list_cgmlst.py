from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mentalist_List_Cgmlst_V0_1_0 = CommandToolBuilder(tool="mentalist_list_cgmlst", base_command=["mentalist", "list_cgmlst"], inputs=[ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Only list schemes where the species name starts\nwith this prefix."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mentalist_List_Cgmlst_V0_1_0().translate("wdl", allow_empty_container=True)

