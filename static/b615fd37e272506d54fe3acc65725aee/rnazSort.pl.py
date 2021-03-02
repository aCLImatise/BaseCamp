from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rnazsort_Pl_V0_1_0 = CommandToolBuilder(tool="rnazSort.pl", base_command=["rnazSort.pl"], inputs=[ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="--reverse", doc=InputDocumentation(doc="Sort in reverse order.")), ToolInput(tag="in_no_loci", input_type=Boolean(optional=True), prefix="--no-loci", doc=InputDocumentation(doc="Do not preserve the locus grouping but simply sort the windows.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints a detailed manual page and exits.")), ToolInput(tag="in_key", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnazsort_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

