from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Rapclust_V0_1_0 = CommandToolBuilder(tool="RapClust", base_command=["RapClust"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Config file describing the experimental setup  [required]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rapclust_V0_1_0().translate("wdl", allow_empty_container=True)

