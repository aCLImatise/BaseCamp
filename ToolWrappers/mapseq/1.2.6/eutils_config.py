from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Eutils_Config_V0_1_0 = CommandToolBuilder(tool="eutils_config", base_command=["eutils-config"], inputs=[ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="show EUTILS installation prefix")), ToolInput(tag="in_libs", input_type=Boolean(optional=True), prefix="--libs", doc=InputDocumentation(doc="print library linking information")), ToolInput(tag="in_cxxflags", input_type=Boolean(optional=True), prefix="--cxxflags", doc=InputDocumentation(doc="print pre-processor and compiler flags"))], outputs=[], container="quay.io/biocontainers/mapseq:1.2.6--h8dc0705_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Eutils_Config_V0_1_0().translate("wdl")

