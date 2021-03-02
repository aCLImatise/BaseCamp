from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Easypqp_Convert_Annotation__V0_1_0 = CommandToolBuilder(tool="easypqp_convert_annotation.", base_command=["easypqp", "convert", "annotation."], inputs=[ToolInput(tag="in_easy_pqp", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_convert", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Easypqp_Convert_Annotation__V0_1_0().translate("wdl", allow_empty_container=True)

