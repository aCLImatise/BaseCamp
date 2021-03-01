from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Annotations_Set_Boundaries_V0_1_0 = CommandToolBuilder(tool="arrow_annotations_set_boundaries", base_command=["arrow", "annotations", "set_boundaries"], inputs=[ToolInput(tag="in_organism", input_type=String(optional=True), prefix="--organism", doc=InputDocumentation(doc="Organism Common Name")), ToolInput(tag="in_sequence", input_type=String(optional=True), prefix="--sequence", doc=InputDocumentation(doc="Sequence Name")), ToolInput(tag="in_feature_id", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_start", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_end", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Annotations_Set_Boundaries_V0_1_0().translate("wdl")

