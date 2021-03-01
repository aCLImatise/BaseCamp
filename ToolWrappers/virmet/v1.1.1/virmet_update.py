from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Virmet_Update_V0_1_0 = CommandToolBuilder(tool="virmet_update", base_command=["virmet", "update"], inputs=[ToolInput(tag="in_viral", input_type=String(optional=True), prefix="--viral", doc=InputDocumentation(doc="update viral [n]ucleic/[p]rotein")), ToolInput(tag="in_bact", input_type=Boolean(optional=True), prefix="--bact", doc=InputDocumentation(doc="update bacterial database")), ToolInput(tag="in_fungal", input_type=Boolean(optional=True), prefix="--fungal", doc=InputDocumentation(doc="update fungal database")), ToolInput(tag="in_picked", input_type=File(optional=True), prefix="--picked", doc=InputDocumentation(doc="file with additional sequences, one GI per line")), ToolInput(tag="in_vir_met", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_update", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Virmet_Update_V0_1_0().translate("wdl", allow_empty_container=True)

