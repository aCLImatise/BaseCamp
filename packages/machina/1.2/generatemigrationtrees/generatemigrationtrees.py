from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Generatemigrationtrees_V0_1_0 = CommandToolBuilder(tool="generatemigrationtrees", base_command=["generatemigrationtrees"], inputs=[ToolInput(tag="in_anatomical_sites", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/machina:1.2--h176a8bc_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generatemigrationtrees_V0_1_0().translate("wdl")

