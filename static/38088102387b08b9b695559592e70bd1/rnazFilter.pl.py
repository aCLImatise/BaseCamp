from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Rnazfilter_Pl_V0_1_0 = CommandToolBuilder(tool="rnazFilter.pl", base_command=["rnazFilter.pl"], inputs=[ToolInput(tag="in_count", input_type=Boolean(optional=True), prefix="--count", doc=InputDocumentation(doc="Count the windows/loci instead of printing them.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints a detailed manual page and exits."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnazfilter_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

