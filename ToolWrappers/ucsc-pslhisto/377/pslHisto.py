from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Pslhisto_V0_1_0 = CommandToolBuilder(tool="pslHisto", base_command=["pslHisto"], inputs=[ToolInput(tag="in_multi_only", input_type=Boolean(optional=True), prefix="-multiOnly", doc=InputDocumentation(doc="- omit queries with only one alignment from output.")), ToolInput(tag="in_nonzero", input_type=Boolean(optional=True), prefix="-nonZero", doc=InputDocumentation(doc="- omit queries with zero values."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pslhisto_V0_1_0().translate("wdl", allow_empty_container=True)

