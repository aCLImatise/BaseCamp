from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsem_Generate_Data_Matrix_V0_1_0 = CommandToolBuilder(tool="rsem_generate_data_matrix", base_command=["rsem-generate-data-matrix"], inputs=[ToolInput(tag="in_sample_a_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Generate_Data_Matrix_V0_1_0().translate("wdl", allow_empty_container=True)

