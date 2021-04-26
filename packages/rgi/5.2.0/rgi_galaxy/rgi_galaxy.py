from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Rgi_Galaxy_V0_1_0 = CommandToolBuilder(tool="rgi_galaxy", base_command=["rgi", "galaxy"], inputs=[ToolInput(tag="in_galaxy_database", input_type=File(optional=True), prefix="--galaxy_database", doc=InputDocumentation(doc="path to CARD data and blast databases")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="debug mode"))], outputs=[], container="quay.io/biocontainers/rgi:5.2.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgi_Galaxy_V0_1_0().translate("wdl")

