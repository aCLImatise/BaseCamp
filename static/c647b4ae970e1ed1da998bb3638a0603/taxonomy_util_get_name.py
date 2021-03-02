from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Taxonomy_Util_Get_Name_V0_1_0 = CommandToolBuilder(tool="taxonomy_util_get_name", base_command=["taxonomy_util", "get_name"], inputs=[ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxonomy_Util_Get_Name_V0_1_0().translate("wdl", allow_empty_container=True)

