from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Openmg_V0_1_0 = CommandToolBuilder(tool="openmg", base_command=["openmg"], inputs=[ToolInput(tag="in_ec", input_type=Boolean(optional=True), prefix="-ec", doc=InputDocumentation(doc=":  elemental composition of the molecules to be generated.")), ToolInput(tag="in_sdf_file_store", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc=":   SDF file where to store the molecules.")), ToolInput(tag="in_fr", input_type=Boolean(optional=True), prefix="-fr", doc=InputDocumentation(doc=":  SDF file containing prescribed one or multiple substructures. In the case\nof multiple substructures, they have to be non-overlapping.")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Openmg_V0_1_0().translate("wdl", allow_empty_container=True)

