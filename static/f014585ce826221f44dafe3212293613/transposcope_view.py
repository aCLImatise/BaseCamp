from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Transposcope_View_V0_1_0 = CommandToolBuilder(tool="transposcope_view", base_command=["transposcope", "view"], inputs=[ToolInput(tag="in_web_directory", input_type=String(), position=0, doc=InputDocumentation(doc="The path to the web directory created by the align tool."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transposcope_View_V0_1_0().translate("wdl", allow_empty_container=True)

