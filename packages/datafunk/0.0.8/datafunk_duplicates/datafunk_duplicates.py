from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Datafunk_Duplicates_V0_1_0 = CommandToolBuilder(tool="datafunk_duplicates", base_command=["datafunk", "duplicates"], inputs=[ToolInput(tag="in_data_funk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_subcommand", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Datafunk_Duplicates_V0_1_0().translate("wdl")

