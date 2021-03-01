from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Filter_Components_Py_Infile_Infile_V0_1_0 = CommandToolBuilder(tool="filter_components.py_infile_infile", base_command=["filter_components.py", "infile", "infile"], inputs=[ToolInput(tag="in_filter_components_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_outfile", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_minlength", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Components_Py_Infile_Infile_V0_1_0().translate("wdl", allow_empty_container=True)

