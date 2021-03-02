from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Virsorter_Setup_V0_1_0 = CommandToolBuilder(tool="virsorter_setup", base_command=["virsorter", "setup"], inputs=[ToolInput(tag="in_db_dir", input_type=File(optional=True), prefix="--db-dir", doc=InputDocumentation(doc="diretory path for databases  [required]")), ToolInput(tag="in_jobs", input_type=Int(optional=True), prefix="--jobs", doc=InputDocumentation(doc="number of simultaneous downloads  [default: 8]")), ToolInput(tag="in_snake_make_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Virsorter_Setup_V0_1_0().translate("wdl", allow_empty_container=True)

