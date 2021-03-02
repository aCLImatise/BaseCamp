from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Hca_Dss_Head_File_V0_1_0 = CommandToolBuilder(tool="hca_dss_head_file", base_command=["hca", "dss", "head-file"], inputs=[ToolInput(tag="in_uuid", input_type=File(optional=True), prefix="--uuid", doc=InputDocumentation(doc="A RFC4122-compliant ID for the file.")), ToolInput(tag="in_replica", input_type=String(optional=True), prefix="--replica", doc=InputDocumentation(doc="Replica to fetch from."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Dss_Head_File_V0_1_0().translate("wdl", allow_empty_container=True)

