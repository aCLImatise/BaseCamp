from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Filtergridseeds_V0_1_0 = CommandToolBuilder(tool="FilterGridSeeds", base_command=["FilterGridSeeds"], inputs=[ToolInput(tag="in_string_target_file", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="<string> : target fasta file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filtergridseeds_V0_1_0().translate("wdl", allow_empty_container=True)

