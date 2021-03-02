from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hmm2Gff_Py_V0_1_0 = CommandToolBuilder(tool="hmm2gff.py", base_command=["hmm2gff.py"], inputs=[ToolInput(tag="in_map", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_features", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_contributing", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_class_fication", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_back", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_functional", input_type=String(), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_annotation", input_type=String(), position=10, doc=InputDocumentation(doc="")), ToolInput(tag="in_and", input_type=String(), position=11, doc=InputDocumentation(doc="")), ToolInput(tag="in_gene", input_type=String(), position=12, doc=InputDocumentation(doc="")), ToolInput(tag="in_prediction", input_type=String(), position=13, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmm2Gff_Py_V0_1_0().translate("wdl", allow_empty_container=True)

