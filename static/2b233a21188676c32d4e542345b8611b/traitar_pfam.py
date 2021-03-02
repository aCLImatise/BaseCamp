from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Traitar_Pfam_V0_1_0 = CommandToolBuilder(tool="traitar_pfam", base_command=["traitar", "pfam"], inputs=[ToolInput(tag="in_local", input_type=Boolean(optional=True), prefix="--local", doc=InputDocumentation(doc="the Pfam HMMs are in the above directory with name 'Pfam-A.hmm'")), ToolInput(tag="in_download", input_type=String(), position=0, doc=InputDocumentation(doc="download Pfam HMMs into the given download directory and untar\nand unzip it"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Traitar_Pfam_V0_1_0().translate("wdl", allow_empty_container=True)

