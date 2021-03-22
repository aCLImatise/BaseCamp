from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Filter_Away_Subset_Py_V0_1_0 = CommandToolBuilder(tool="filter_away_subset.py", base_command=["filter_away_subset.py"], inputs=[ToolInput(tag="in_fuzzy_junction", input_type=Int(optional=True), prefix="--fuzzy_junction", doc=InputDocumentation(doc="Fuzzy junction max dist (default: 5bp)\n"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Away_Subset_Py_V0_1_0().translate("wdl")

