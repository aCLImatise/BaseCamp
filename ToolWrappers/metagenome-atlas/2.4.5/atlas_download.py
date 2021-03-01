from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Atlas_Download_V0_1_0 = CommandToolBuilder(tool="atlas_download", base_command=["atlas", "download"], inputs=[ToolInput(tag="in_db_dir", input_type=File(optional=True), prefix="--db-dir", doc=InputDocumentation(doc="location to store databases  [required]")), ToolInput(tag="in_jobs", input_type=Int(optional=True), prefix="--jobs", doc=InputDocumentation(doc="number of simultaneous downloads  [default: 1]")), ToolInput(tag="in_snake_make_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/metagenome-atlas:2.4.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Atlas_Download_V0_1_0().translate("wdl")

