from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Tripaille_Db_Populate_Mviews_V0_1_0 = CommandToolBuilder(tool="tripaille_db_populate_mviews", base_command=["tripaille", "db", "populate_mviews"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="filter on mview name")), ToolInput(tag="in_no_wait", input_type=Boolean(optional=True), prefix="--no_wait", doc=InputDocumentation(doc="Do not wait for job to complete"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Db_Populate_Mviews_V0_1_0().translate("wdl", allow_empty_container=True)

