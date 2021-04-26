from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Augur_Auspice__V0_1_0 = CommandToolBuilder(tool="augur_auspice.", base_command=["augur", "auspice."], inputs=[ToolInput(tag="in_augur", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/augur:12.0.0--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Augur_Auspice__V0_1_0().translate("wdl")

