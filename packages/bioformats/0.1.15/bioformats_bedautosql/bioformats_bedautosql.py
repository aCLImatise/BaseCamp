from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Bioformats_Bedautosql_V0_1_0 = CommandToolBuilder(tool="bioformats_bedautosql", base_command=["bioformats", "bedautosql"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="a table name (default: Table)")), ToolInput(tag="in_description", input_type=String(optional=True), prefix="--description", doc=InputDocumentation(doc="a table description (default: Description)")), ToolInput(tag="in_lines", input_type=Int(optional=True), prefix="--lines", doc=InputDocumentation(doc="the number of lines to analyzefrom the input file\n(default: 100)\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_file", input_type=String(), position=0, doc=InputDocumentation(doc="a BED file")), ToolInput(tag="in_output_file", input_type=String(), position=1, doc=InputDocumentation(doc="an output file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioformats_Bedautosql_V0_1_0().translate("wdl", allow_empty_container=True)

