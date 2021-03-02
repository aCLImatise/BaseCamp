from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Buildsnpdb_Pl_V0_1_0 = CommandToolBuilder(tool="buildSNPDB.pl", base_command=["buildSNPDB.pl"], inputs=[ToolInput(tag="in_in_directory_name", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="in directory name")), ToolInput(tag="in_reference_file", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="reference file")), ToolInput(tag="in_header_list", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="header list"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Buildsnpdb_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

