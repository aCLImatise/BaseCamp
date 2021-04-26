from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Remove_From_Embl_Py_V0_1_0 = CommandToolBuilder(tool="remove_from_embl.py", base_command=["remove_from_embl.py"], inputs=[ToolInput(tag="in_script", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_remove", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequences", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_specific", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_given", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_organism", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_from", input_type=String(), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_swissprot", input_type=String(), position=11, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot", input_type=File(), position=12, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mikado:2.2.5--py39h70b41aa_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_From_Embl_Py_V0_1_0().translate("wdl")

