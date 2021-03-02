from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory

Rgt_Tools_Py_Bed_Strand_V0_1_0 = CommandToolBuilder(tool="rgt_tools.py_bed_strand", base_command=["rgt-tools.py", "bed_strand"], inputs=[ToolInput(tag="in_input_bed_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input BED file")), ToolInput(tag="in_input_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="Input directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rgt_Tools_Py_Bed_Strand_V0_1_0().translate("wdl", allow_empty_container=True)

