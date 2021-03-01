from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Transpose_Pl_V0_1_0 = CommandToolBuilder(tool="transpose.pl", base_command=["transpose.pl"], inputs=[ToolInput(tag="in_set_delimiter_istab", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc=": set the delimiter for the columns to DELIM (default is\ntab).\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transpose_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

