from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Color_Bed12_Post_Sqanti_Py_V0_1_0 = CommandToolBuilder(tool="color_bed12_post_sqanti.py", base_command=["color_bed12_post_sqanti.py"], inputs=[ToolInput(tag="in_ok_to_ignore", input_type=Boolean(optional=True), prefix="--ok_to_ignore", doc=InputDocumentation(doc="OK to ignore entries missing in bed file (default: off)")), ToolInput(tag="in_class_filename", input_type=String(), position=0, doc=InputDocumentation(doc="SQANTI(3) classification filename")), ToolInput(tag="in_be_done_two_filename", input_type=Int(), position=1, doc=InputDocumentation(doc="Input BED12 filename (converted from same SQANTI3 input GTF)")), ToolInput(tag="in_output_prefix", input_type=String(), position=2, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Color_Bed12_Post_Sqanti_Py_V0_1_0().translate("wdl")

