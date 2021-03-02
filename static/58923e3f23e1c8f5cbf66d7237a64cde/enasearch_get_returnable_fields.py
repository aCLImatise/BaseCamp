from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Enasearch_Get_Returnable_Fields_V0_1_0 = CommandToolBuilder(tool="enasearch_get_returnable_fields", base_command=["enasearch", "get_returnable_fields"], inputs=[ToolInput(tag="in_result", input_type=String(optional=True), prefix="--result", doc=InputDocumentation(doc="Id of a result (accessible with get_results)  [required]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Enasearch_Get_Returnable_Fields_V0_1_0().translate("wdl", allow_empty_container=True)

