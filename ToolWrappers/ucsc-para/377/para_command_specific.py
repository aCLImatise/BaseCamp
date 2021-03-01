from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Para_Command_Specific_V0_1_0 = CommandToolBuilder(tool="para_command_specific", base_command=["para", "command-specific"], inputs=[ToolInput(tag="in_not_valid_option", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="not a valid option"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Para_Command_Specific_V0_1_0().translate("wdl", allow_empty_container=True)

