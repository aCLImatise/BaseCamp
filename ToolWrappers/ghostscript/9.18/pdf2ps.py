from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Pdf2Ps_V0_1_0 = CommandToolBuilder(tool="pdf2ps", base_command=["pdf2ps"], inputs=[ToolInput(tag="in_d_ascii_eight_five_encode_pages", input_type=Int(optional=True), prefix="-dASCII85EncodePages", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pdf2Ps_V0_1_0().translate("wdl", allow_empty_container=True)

