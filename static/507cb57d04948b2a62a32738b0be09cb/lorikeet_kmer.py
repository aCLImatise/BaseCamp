from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Lorikeet_Kmer_V0_1_0 = CommandToolBuilder(tool="lorikeet_kmer", base_command=["lorikeet", "kmer"], inputs=[ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/lorikeet-genome:0.5.0--h9eda3c7_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lorikeet_Kmer_V0_1_0().translate("wdl")

