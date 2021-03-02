from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ariba_Test_Outdir_V0_1_0 = CommandToolBuilder(tool="ariba_test_outdir", base_command=["ariba", "test", "outdir"], inputs=[ToolInput(tag="in_ariba", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ariba_Test_Outdir_V0_1_0().translate("wdl")

