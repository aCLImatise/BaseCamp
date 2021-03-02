from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bed_Complement_Py_V0_1_0 = CommandToolBuilder(tool="bed_complement.py", base_command=["bed_complement.py"], inputs=[ToolInput(tag="in_bed_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_chrom_length_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed_Complement_Py_V0_1_0().translate("wdl", allow_empty_container=True)

