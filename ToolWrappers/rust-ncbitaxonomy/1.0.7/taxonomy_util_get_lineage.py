from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Taxonomy_Util_Get_Lineage_V0_1_0 = CommandToolBuilder(tool="taxonomy_util_get_lineage", base_command=["taxonomy_util", "get_lineage"], inputs=[ToolInput(tag="in_show_names", input_type=Boolean(optional=True), prefix="--show_names", doc=InputDocumentation(doc="Show taxon names, not just IDs")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="Delimiter for lineage string")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="")), ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Taxonomy_Util_Get_Lineage_V0_1_0().translate("wdl", allow_empty_container=True)

