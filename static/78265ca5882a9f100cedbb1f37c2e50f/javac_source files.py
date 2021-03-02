from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Javac_Source_Files_V0_1_0 = CommandToolBuilder(tool="javac_source files", base_command=["javac", "source files"], inputs=[ToolInput(tag="in_javac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_source_files", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Javac_Source_Files_V0_1_0().translate("wdl", allow_empty_container=True)

