from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Virmet_Fetch_V0_1_0 = CommandToolBuilder(tool="virmet_fetch", base_command=["virmet", "fetch"], inputs=[ToolInput(tag="in_viral", input_type=String(optional=True), prefix="--viral", doc=InputDocumentation(doc="viral [nucleic acids/proteins]")), ToolInput(tag="in_human", input_type=Boolean(optional=True), prefix="--human", doc=InputDocumentation(doc="human")), ToolInput(tag="in_bact", input_type=Boolean(optional=True), prefix="--bact", doc=InputDocumentation(doc="bacterial (RefSeq)")), ToolInput(tag="in_fungal", input_type=Boolean(optional=True), prefix="--fungal", doc=InputDocumentation(doc="fungal (RefSeq)")), ToolInput(tag="in_bovine", input_type=Boolean(optional=True), prefix="--bovine", doc=InputDocumentation(doc="bovine (Bos taurus)")), ToolInput(tag="in_vir_met", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fetch", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Virmet_Fetch_V0_1_0().translate("wdl", allow_empty_container=True)

