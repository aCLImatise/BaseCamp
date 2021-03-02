from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hydra_Assembler_V0_1_0 = CommandToolBuilder(tool="hydra_assembler", base_command=["hydra-assembler"], inputs=[ToolInput(tag="in_config", input_type=Boolean(optional=True), prefix="-config", doc=InputDocumentation(doc="Configuration file.\nCol 1. Sample Id (string)\nCol 2. Mapping file (path/file)\nCol 3. Expected insert size (integer)\nCol 4. Variance (integer)\nCol 5. Num. variances (integer)")), ToolInput(tag="in_routed", input_type=Boolean(optional=True), prefix="-routed", doc=InputDocumentation(doc="A single routed chr/chr/strand/strand file from HydraRouter.")), ToolInput(tag="in_max_mappings", input_type=Boolean(optional=True), prefix="-maxMappings", doc=InputDocumentation(doc="Maximum number of mappings in a cluster before Hydra will 'punt'.")), ToolInput(tag="in_crumbs", input_type=Boolean(optional=True), prefix="--crumbs", doc=InputDocumentation(doc="Hydra will leave temporary files.")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="-out", doc=InputDocumentation(doc="")), ToolInput(tag="in_hydra", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hydra_Assembler_V0_1_0().translate("wdl")

