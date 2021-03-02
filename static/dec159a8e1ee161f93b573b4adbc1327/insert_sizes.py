from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Insert_Sizes_V0_1_0 = CommandToolBuilder(tool="insert_sizes", base_command=["insert-sizes"], inputs=[ToolInput(tag="in_disregard_bank_locks", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Disregard bank locks and write permissions (spy mode)")), ToolInput(tag="in_display_compatible_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display the compatible bank version")), ToolInput(tag="in_number_use_default", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="Number of characters of seqname to use as sublibrary (default=0)")), ToolInput(tag="in_show_details_insert", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Show details for each insert")), ToolInput(tag="in_print_library_summaries", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="Don't print library summaries")), ToolInput(tag="in_use_scaffold_information", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Don't use scaffold information")), ToolInput(tag="in_print_coverage_information", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="Print coverage information")), ToolInput(tag="in_also_process_contigs", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc="Also process contigs not placed into a scaffold")), ToolInput(tag="in_bank_path", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Insert_Sizes_V0_1_0().translate("wdl", allow_empty_container=True)

