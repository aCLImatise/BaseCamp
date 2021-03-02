from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Rnacentralhttprequest_V0_1_0 = CommandToolBuilder(tool="RNAcentralHTTPRequest", base_command=["RNAcentralHTTPRequest"], inputs=[ToolInput(tag="in_input_sequence", input_type=String(optional=True), prefix="--inputsequence", doc=InputDocumentation(doc="input sequence")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Loud verbosity")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Quiet verbosity"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnacentralhttprequest_V0_1_0().translate("wdl", allow_empty_container=True)

