from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Checksub_V0_1_0 = CommandToolBuilder(tool="checksub", base_command=["checksub"], inputs=[ToolInput(tag="in_input_data_type", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Input data [Data In]\nData Type = Seq-submit")), ToolInput(tag="in_input_data_binary", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Input data is binary [T/F]  Optional\ndefault = F")), ToolInput(tag="in_output_data_default", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Output data [Data Out]\ndefault = stdout\nData Type = Seq-submit\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checksub_V0_1_0().translate("wdl", allow_empty_container=True)

