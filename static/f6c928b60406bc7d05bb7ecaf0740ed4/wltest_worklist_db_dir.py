from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Wltest_Worklist_Db_Dir_V0_1_0 = CommandToolBuilder(tool="wltest_worklist_db_dir", base_command=["wltest", "worklist-db-dir"], inputs=[ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_k", input_type=String(optional=True), prefix="-k", doc=InputDocumentation(doc="")), ToolInput(tag="in_wl_test", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_work_list_db_dir", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_query", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/dcmtk:3.6.5--h5fca97b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wltest_Worklist_Db_Dir_V0_1_0().translate("wdl")

