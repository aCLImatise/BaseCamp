from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Virmet_Index_V0_1_0 = CommandToolBuilder(tool="virmet_index", base_command=["virmet", "index"], inputs=[ToolInput(tag="in_viral", input_type=String(optional=True), prefix="--viral", doc=InputDocumentation(doc="make blast index of viral database")), ToolInput(tag="in_human", input_type=Boolean(optional=True), prefix="--human", doc=InputDocumentation(doc="make bwa index of human database")), ToolInput(tag="in_bact", input_type=Boolean(optional=True), prefix="--bact", doc=InputDocumentation(doc="make bwa index of bacterial database")), ToolInput(tag="in_fungal", input_type=Boolean(optional=True), prefix="--fungal", doc=InputDocumentation(doc="make bwa index of fungal database")), ToolInput(tag="in_bovine", input_type=Boolean(optional=True), prefix="--bovine", doc=InputDocumentation(doc="make bwa index of bovine database")), ToolInput(tag="in_vir_met", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_index", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Virmet_Index_V0_1_0().translate("wdl", allow_empty_container=True)

