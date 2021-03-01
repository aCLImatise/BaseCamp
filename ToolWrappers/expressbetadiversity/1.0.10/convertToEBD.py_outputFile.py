from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Converttoebd_Py_Outputfile_V0_1_0 = CommandToolBuilder(tool="convertToEBD.py_outputFile", base_command=["convertToEBD.py", "outputFile"], inputs=[ToolInput(tag="in_convert_to_ebd_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Converttoebd_Py_Outputfile_V0_1_0().translate("wdl", allow_empty_container=True)

