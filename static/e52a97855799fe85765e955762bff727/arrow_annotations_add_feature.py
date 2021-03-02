from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Annotations_Add_Feature_V0_1_0 = CommandToolBuilder(tool="arrow_annotations_add_feature", base_command=["arrow", "annotations", "add_feature"], inputs=[ToolInput(tag="in_feature", input_type=String(optional=True), prefix="--feature", doc=InputDocumentation(doc="Feature information")), ToolInput(tag="in_organism", input_type=String(optional=True), prefix="--organism", doc=InputDocumentation(doc="Organism Common Name")), ToolInput(tag="in_sequence", input_type=String(optional=True), prefix="--sequence", doc=InputDocumentation(doc="Sequence Name"))], outputs=[], container="quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Annotations_Add_Feature_V0_1_0().translate("wdl")

