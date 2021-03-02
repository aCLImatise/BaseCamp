from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Lorikeet_Evolve_V0_1_0 = CommandToolBuilder(tool="lorikeet_evolve", base_command=["lorikeet", "evolve"], inputs=[ToolInput(tag="in_bam_files", input_type=String(optional=True), prefix="--bam-files", doc=InputDocumentation(doc="")), ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/lorikeet-genome:0.5.0--h9eda3c7_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lorikeet_Evolve_V0_1_0().translate("wdl")

