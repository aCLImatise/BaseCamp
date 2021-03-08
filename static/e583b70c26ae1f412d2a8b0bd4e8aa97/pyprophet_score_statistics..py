from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pyprophet_Score_Statistics__V0_1_0 = CommandToolBuilder(tool="pyprophet_score_statistics.", base_command=["pyprophet", "score", "statistics."], inputs=[ToolInput(tag="in_py_prophet", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_score", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pyprophet:2.1.10--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyprophet_Score_Statistics__V0_1_0().translate("wdl")

