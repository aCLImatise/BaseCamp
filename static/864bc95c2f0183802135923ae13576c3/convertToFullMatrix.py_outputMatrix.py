from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Converttofullmatrix_Py_Outputmatrix_V0_1_0 = CommandToolBuilder(tool="convertToFullMatrix.py_outputMatrix", base_command=["convertToFullMatrix.py", "outputMatrix"], inputs=[ToolInput(tag="in_convert_to_full_matrix_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_matrix", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_matrix", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Converttofullmatrix_Py_Outputmatrix_V0_1_0().translate("wdl", allow_empty_container=True)

