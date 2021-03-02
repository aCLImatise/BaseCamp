from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

2Ndscore_In_Fasta_V0_1_0 = CommandToolBuilder(tool="2ndscore_in.fasta", base_command=["2ndscore", "in.fasta"], inputs=[ToolInput(tag="in_gc", input_type=Boolean(optional=True), prefix="--gc", doc=InputDocumentation(doc="=-2.3 --au=-0.9 --gu=1.3 --mm=3.5 --gap=6"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    2Ndscore_In_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

