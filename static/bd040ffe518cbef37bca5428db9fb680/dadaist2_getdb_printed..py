from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Dadaist2_Getdb_Printed__V0_1_0 = CommandToolBuilder(tool="dadaist2_getdb_printed.", base_command=["dadaist2-getdb", "printed."], inputs=[ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="")), ToolInput(tag="in_dadaist_two_get_db", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/dadaist2:0.7.5--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dadaist2_Getdb_Printed__V0_1_0().translate("wdl")

