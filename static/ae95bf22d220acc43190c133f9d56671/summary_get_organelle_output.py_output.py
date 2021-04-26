from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Summary_Get_Organelle_Output_Py_Output_V0_1_0 = CommandToolBuilder(tool="summary_get_organelle_output.py_output", base_command=["summary_get_organelle_output.py", "output"], inputs=[ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_summary_get_organelle_output_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_list_of_folders", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/getorganelle:1.7.4.1--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Summary_Get_Organelle_Output_Py_Output_V0_1_0().translate("wdl")

