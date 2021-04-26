from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Annotations_Get_Features_V0_1_0 = CommandToolBuilder(tool="arrow_annotations_get_features", base_command=["arrow", "annotations", "get_features"], inputs=[ToolInput(tag="in_organism", input_type=String(optional=True), prefix="--organism", doc=InputDocumentation(doc="Organism Common Name")), ToolInput(tag="in_sequence", input_type=String(optional=True), prefix="--sequence", doc=InputDocumentation(doc="Sequence Name"))], outputs=[], container="quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Annotations_Get_Features_V0_1_0().translate("wdl")

