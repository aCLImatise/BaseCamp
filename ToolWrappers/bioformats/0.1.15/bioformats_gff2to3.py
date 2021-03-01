from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Bioformats_Gff2To3_V0_1_0 = CommandToolBuilder(tool="bioformats_gff2to3", base_command=["bioformats", "gff2to3"], inputs=[ToolInput(tag="in_ignore_incorrect_records", input_type=Boolean(optional=True), prefix="--ignore_incorrect_records", doc=InputDocumentation(doc="ignore incorrect records in the specified input GFF2\nfile\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_gff_two_file", input_type=Int(), position=0, doc=InputDocumentation(doc="a GFF2 file")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc="the output GFF3 file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioformats_Gff2To3_V0_1_0().translate("wdl", allow_empty_container=True)

