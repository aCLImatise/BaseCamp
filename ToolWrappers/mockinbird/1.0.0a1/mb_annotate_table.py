from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Mb_Annotate_Table_V0_1_0 = CommandToolBuilder(tool="mb_annotate_table", base_command=["mb-annotate-table"], inputs=[ToolInput(tag="in_max_n", input_type=Int(optional=True), prefix="--max_n", doc=InputDocumentation(doc="")), ToolInput(tag="in_par_clip_table", input_type=String(), position=0, doc=InputDocumentation(doc="path to parclip table")), ToolInput(tag="in_output_dir", input_type=String(), position=1, doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_gff_three_an_not", input_type=Int(), position=2, doc=InputDocumentation(doc="paths to one or more gff3 annotation files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Annotate_Table_V0_1_0().translate("wdl", allow_empty_container=True)

