from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Summary_Get_Organelle_Output_Py_V0_1_0 = CommandToolBuilder(tool="summary_get_organelle_output.py", base_command=["summary_get_organelle_output.py"], inputs=[ToolInput(tag="in_output_csv_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output csv file.")), ToolInput(tag="in_list_of_sample_folders", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_csv_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_csv_file", type_hint=File()), doc=OutputDocumentation(doc="Output csv file."))], container="quay.io/biocontainers/getorganelle:1.7.3.4--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Summary_Get_Organelle_Output_Py_V0_1_0().translate("wdl")

