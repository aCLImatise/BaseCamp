from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Clustering_Square_Matrix_V0_1_0 = CommandToolBuilder(tool="Clustering_square_matrix", base_command=["Clustering", "square-matrix"], inputs=[ToolInput(tag="in_column_matrix", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_id_mapping", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_matrix", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clustering_Square_Matrix_V0_1_0().translate("wdl", allow_empty_container=True)

