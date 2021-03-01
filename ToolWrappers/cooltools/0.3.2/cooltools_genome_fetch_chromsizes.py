from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cooltools_Genome_Fetch_Chromsizes_V0_1_0 = CommandToolBuilder(tool="cooltools_genome_fetch_chromsizes", base_command=["cooltools", "genome", "fetch-chromsizes"], inputs=[ToolInput(tag="in_db", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cooltools:0.3.2--py36h29c9776_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooltools_Genome_Fetch_Chromsizes_V0_1_0().translate("wdl")

