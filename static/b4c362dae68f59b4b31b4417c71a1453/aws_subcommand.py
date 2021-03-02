from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Aws_Subcommand_V0_1_0 = CommandToolBuilder(tool="aws_subcommand", base_command=["aws", "subcommand"], inputs=[ToolInput(tag="in_aws", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_subcommand", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_parameters", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aws_Subcommand_V0_1_0().translate("wdl", allow_empty_container=True)

