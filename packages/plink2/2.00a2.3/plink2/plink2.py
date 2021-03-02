from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Plink2_V0_1_0 = CommandToolBuilder(tool="plink2", base_command=["plink2"], inputs=[ToolInput(tag="in_genotyping_rate", input_type=Boolean(optional=True), prefix="--genotyping-rate", doc=InputDocumentation(doc=", and --zst-decompress."))], outputs=[], container="quay.io/biocontainers/plink2:2.00a2.3--hf22980b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plink2_V0_1_0().translate("wdl")

