from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Schema_Salad_Doc_V0_1_0 = CommandToolBuilder(tool="schema_salad_doc", base_command=["schema-salad-doc"], inputs=[ToolInput(tag="in_redirect", input_type=String(optional=True), prefix="--redirect", doc=InputDocumentation(doc="")), ToolInput(tag="in_only", input_type=String(optional=True), prefix="--only", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Schema_Salad_Doc_V0_1_0().translate("wdl", allow_empty_container=True)

