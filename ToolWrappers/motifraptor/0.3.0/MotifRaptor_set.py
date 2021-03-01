from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Motifraptor_Set_V0_1_0 = CommandToolBuilder(tool="MotifRaptor_set", base_command=["MotifRaptor", "set"], inputs=[ToolInput(tag="in_parameter_name", input_type=String(optional=True), prefix="--parametername", doc=InputDocumentation(doc="Parameter Name")), ToolInput(tag="in_parameter_value", input_type=String(optional=True), prefix="--parametervalue", doc=InputDocumentation(doc="Parameter Value\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Motifraptor_Set_V0_1_0().translate("wdl", allow_empty_container=True)

