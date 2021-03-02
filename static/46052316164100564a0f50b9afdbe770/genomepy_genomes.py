from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Genomepy_Genomes_V0_1_0 = CommandToolBuilder(tool="genomepy_genomes", base_command=["genomepy", "genomes"], inputs=[ToolInput(tag="in_provider", input_type=String(optional=True), prefix="--provider", doc=InputDocumentation(doc="provider"))], outputs=[], container="quay.io/biocontainers/genomepy:0.9.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomepy_Genomes_V0_1_0().translate("wdl")

