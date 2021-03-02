from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float

Svdb_V0_1_0 = CommandToolBuilder(tool="svdb", base_command=["svdb"], inputs=[ToolInput(tag="in_build", input_type=Boolean(optional=True), prefix="--build", doc=InputDocumentation(doc="create a db")), ToolInput(tag="in_query", input_type=Boolean(optional=True), prefix="--query", doc=InputDocumentation(doc="query a db")), ToolInput(tag="in_merge", input_type=Boolean(optional=True), prefix="--merge", doc=InputDocumentation(doc="merge similar structural variants within a vcf file")), ToolInput(tag="in_export", input_type=Boolean(optional=True), prefix="--export", doc=InputDocumentation(doc="export a database")), ToolInput(tag="in_sv_db_two_dot_four_dot_zero", input_type=Float(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svdb_V0_1_0().translate("wdl", allow_empty_container=True)

