from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Satsumasynteny2_V0_1_0 = CommandToolBuilder(tool="SatsumaSynteny2", base_command=["SatsumaSynteny2"], inputs=[ToolInput(tag="in_string_query_sequence", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="<string> : query fasta sequence"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Satsumasynteny2_V0_1_0().translate("wdl", allow_empty_container=True)

