from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Sort_Bed_Megarow_V0_1_0 = CommandToolBuilder(tool="sort_bed_megarow", base_command=["sort-bed-megarow"], inputs=[ToolInput(tag="in_tmpdir", input_type=Int(optional=True), prefix="--tmpdir", doc=InputDocumentation(doc="useful only with --max-mem.")), ToolInput(tag="in_unique", input_type=String(optional=True), prefix="--unique", doc=InputDocumentation(doc="be used to print only unique BED elements (similar to 'sort -u'). Cannot be used with --duplicates.")), ToolInput(tag="in_duplicates", input_type=String(optional=True), prefix="--duplicates", doc=InputDocumentation(doc="be used to print only duplicated or repeated elements (similar to 'uniq -d'). Cannot be used with --unique.")), ToolInput(tag="in_max_mem", input_type=Int(optional=True), prefix="--max-mem", doc=InputDocumentation(doc="")), ToolInput(tag="in_check_sort", input_type=Boolean(optional=True), prefix="--check-sort", doc=InputDocumentation(doc="")), ToolInput(tag="in_sort_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_one_dot_bed", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_two_dot_bed", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sort_Bed_Megarow_V0_1_0().translate("wdl", allow_empty_container=True)

