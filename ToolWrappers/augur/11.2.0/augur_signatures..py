from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Augur_Signatures__V0_1_0 = CommandToolBuilder(tool="augur_signatures.", base_command=["augur", "signatures."], inputs=[ToolInput(tag="in_augur", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/augur:11.2.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Augur_Signatures__V0_1_0().translate("wdl")

