from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Taxonomy_Util_Common_Ancestor_Distance_V0_1_0 = CommandToolBuilder(tool="taxonomy_util_common_ancestor_distance", base_command=["taxonomy_util", "common_ancestor_distance"], inputs=[ToolInput(tag="in_only_canonical", input_type=Boolean(optional=True), prefix="--only_canonical", doc=InputDocumentation(doc="Only consider canonical taxonomic ranks")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="")), ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_name_one", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxonomy_Util_Common_Ancestor_Distance_V0_1_0().translate("wdl", allow_empty_container=True)

