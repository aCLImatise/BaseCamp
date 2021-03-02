from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pyprophet_Backpropagate_File__V0_1_0 = CommandToolBuilder(tool="pyprophet_backpropagate_file.", base_command=["pyprophet", "backpropagate", "file."], inputs=[ToolInput(tag="in_py_prophet", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_back_propagate", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyprophet_Backpropagate_File__V0_1_0().translate("wdl", allow_empty_container=True)

