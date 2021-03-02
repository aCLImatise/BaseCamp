from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cooltools_Genome_Binnify_V0_1_0 = CommandToolBuilder(tool="cooltools_genome_binnify", base_command=["cooltools", "genome", "binnify"], inputs=[ToolInput(tag="in_chrom_sizes_path", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_binsize", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cooltools:0.3.2--py36h29c9776_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooltools_Genome_Binnify_V0_1_0().translate("wdl")

