from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Deepac_Strain_Getmodels_V0_1_0 = CommandToolBuilder(tool="deepac_strain_getmodels", base_command=["deepac-strain", "getmodels"], inputs=[ToolInput(tag="in_sensitive", input_type=Boolean(optional=True), prefix="--sensitive", doc=InputDocumentation(doc="Rebuild the sensitive model.")), ToolInput(tag="in_rapid", input_type=Boolean(optional=True), prefix="--rapid", doc=InputDocumentation(doc="Rebuild the rapid CNN model.")), ToolInput(tag="in_deep_ac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_get_models", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/deepacstrain:0.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Strain_Getmodels_V0_1_0().translate("wdl")

