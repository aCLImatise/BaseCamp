from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Recosimulate_V0_1_0 = CommandToolBuilder(tool="recosimulate", base_command=["recosimulate"], inputs=[ToolInput(tag="in_reco_sim", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_parameter_file_name", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Recosimulate_V0_1_0().translate("wdl", allow_empty_container=True)

