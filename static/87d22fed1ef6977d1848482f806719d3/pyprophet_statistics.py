from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Pyprophet_Statistics_V0_1_0 = CommandToolBuilder(tool="pyprophet_statistics", base_command=["pyprophet", "statistics"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="PyProphet input file.  [required]"))], outputs=[], container="quay.io/biocontainers/pyprophet:2.1.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyprophet_Statistics_V0_1_0().translate("wdl")

