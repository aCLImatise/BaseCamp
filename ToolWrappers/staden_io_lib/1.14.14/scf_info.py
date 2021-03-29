from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Scf_Info_V0_1_0 = CommandToolBuilder(tool="scf_info", base_command=["scf_info"], inputs=[ToolInput(tag="in_scf_filename", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scf_Info_V0_1_0().translate("wdl")

