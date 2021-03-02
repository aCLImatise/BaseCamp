from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Annotations_Add_Attribute_V0_1_0 = CommandToolBuilder(tool="arrow_annotations_add_attribute", base_command=["arrow", "annotations", "add_attribute"], inputs=[ToolInput(tag="in_organism", input_type=String(optional=True), prefix="--organism", doc=InputDocumentation(doc="Organism Common Name")), ToolInput(tag="in_sequence", input_type=String(optional=True), prefix="--sequence", doc=InputDocumentation(doc="Sequence Name")), ToolInput(tag="in_attribute_value", input_type=String(), position=0, doc=InputDocumentation(doc="Add an attribute to a feature"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Annotations_Add_Attribute_V0_1_0().translate("wdl", allow_empty_container=True)

