from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mdoc_Validate_V0_1_0 = CommandToolBuilder(tool="mdoc_validate", base_command=["mdoc-validate"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="The documentation FORMAT used within PATHS.  Valid\nformats include:\necma\nIf no format provided, `ecma' is used.")), ToolInput(tag="in_mdoc", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_validate", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mdoc_Validate_V0_1_0().translate("wdl", allow_empty_container=True)

