from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Planemo_Share_Test_V0_1_0 = CommandToolBuilder(tool="planemo_share_test", base_command=["planemo", "share_test"], inputs=[ToolInput(tag="in_file_path", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Share_Test_V0_1_0().translate("wdl")

