from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

List_Linked_Contigs_V0_1_0 = CommandToolBuilder(tool="list_linked_contigs", base_command=["list-linked-contigs"], inputs=[ToolInput(tag="in_disregard_bank_locks", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Disregard bank locks and write permissions (spy mode)")), ToolInput(tag="in_display_compatible_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display the compatible bank version")), ToolInput(tag="in_number_use_default", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="Number of characters of seqname to use as sublibrary (default=3)")), ToolInput(tag="in_bank_path", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    List_Linked_Contigs_V0_1_0().translate("wdl", allow_empty_container=True)

