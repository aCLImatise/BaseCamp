from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hash_Exp_V0_1_0 = CommandToolBuilder(tool="hash_exp", base_command=["hash_exp"], inputs=[ToolInput(tag="in_exp_file_ball", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hash_Exp_V0_1_0().translate("wdl")

