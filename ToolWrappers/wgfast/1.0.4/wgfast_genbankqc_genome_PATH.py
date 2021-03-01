from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Wgfast_Genbankqc_Genome_Path_V0_1_0 = CommandToolBuilder(tool="wgfast_genbankqc_genome_PATH", base_command=["wgfast_genbankqc", "genome", "PATH"], inputs=[ToolInput(tag="in_metadata", input_type=Boolean(optional=True), prefix="--metadata", doc=InputDocumentation(doc="Get metadata for genome at PATH"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wgfast_Genbankqc_Genome_Path_V0_1_0().translate("wdl", allow_empty_container=True)

