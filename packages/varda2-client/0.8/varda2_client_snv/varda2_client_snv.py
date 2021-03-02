from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Varda2_Client_Snv_V0_1_0 = CommandToolBuilder(tool="varda2_client_snv", base_command=["varda2-client", "snv"], inputs=[ToolInput(tag="in_position", input_type=String(optional=True), prefix="--position", doc=InputDocumentation(doc="Locus position")), ToolInput(tag="in_inserted", input_type=String(optional=True), prefix="--inserted", doc=InputDocumentation(doc="Inserted base")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="Chromosome to look at\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varda2_Client_Snv_V0_1_0().translate("wdl", allow_empty_container=True)

