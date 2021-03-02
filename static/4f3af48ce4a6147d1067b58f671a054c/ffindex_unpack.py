from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ffindex_Unpack_V0_1_0 = CommandToolBuilder(tool="ffindex_unpack", base_command=["ffindex_unpack"], inputs=[ToolInput(tag="in_data_filename", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_index_filename", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dir", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/hhsuite:3.3.0--py38pl526h6ed170a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ffindex_Unpack_V0_1_0().translate("wdl")

