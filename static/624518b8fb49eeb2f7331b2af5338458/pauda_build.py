from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Pauda_Build_V0_1_0 = CommandToolBuilder(tool="pauda_build", base_command=["pauda-build"], inputs=[ToolInput(tag="in_references_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_p_aud_a_index_directory", input_type=Directory(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pauda_Build_V0_1_0().translate("wdl", allow_empty_container=True)

