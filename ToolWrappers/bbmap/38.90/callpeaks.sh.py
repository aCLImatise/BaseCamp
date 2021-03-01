from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Callpeaks_Sh_V0_1_0 = CommandToolBuilder(tool="callpeaks.sh", base_command=["callpeaks.sh"], inputs=[ToolInput(tag="in_increases_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Useful for kmer-frequency histograms."))], outputs=[], container="quay.io/biocontainers/bbmap:38.90--h1296035_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Callpeaks_Sh_V0_1_0().translate("wdl")

