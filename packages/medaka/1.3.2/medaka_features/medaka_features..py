from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Medaka_Features__V0_1_0 = CommandToolBuilder(tool="medaka_features.", base_command=["medaka", "features."], inputs=[ToolInput(tag="in_medaka", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/medaka:1.3.2--py38h130def0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medaka_Features__V0_1_0().translate("wdl")

