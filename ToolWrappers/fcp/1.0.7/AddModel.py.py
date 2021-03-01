from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Addmodel_Py_V0_1_0 = CommandToolBuilder(tool="AddModel.py", base_command=["AddModel.py"], inputs=[ToolInput(tag="in_n", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_domain", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_phylum", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_class", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_order", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_family", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_genus", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_species", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_strain", input_type=String(), position=9, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Addmodel_Py_V0_1_0().translate("wdl", allow_empty_container=True)

