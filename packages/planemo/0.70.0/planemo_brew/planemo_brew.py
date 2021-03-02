from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Planemo_Brew_V0_1_0 = CommandToolBuilder(tool="planemo_brew", base_command=["planemo", "brew"], inputs=[ToolInput(tag="in_brew", input_type=File(optional=True), prefix="--brew", doc=InputDocumentation(doc="Homebrew 'brew' executable to use.")), ToolInput(tag="in_tool_path", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Brew_V0_1_0().translate("wdl", allow_empty_container=True)

