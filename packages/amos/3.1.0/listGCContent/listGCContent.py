from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Listgccontent_V0_1_0 = CommandToolBuilder(tool="listGCContent", base_command=["listGCContent"], inputs=[ToolInput(tag="in_disregard_bank_locks", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Disregard bank locks and write permissions (spy mode)")), ToolInput(tag="in_display_compatible_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display the compatible bank version")), ToolInput(tag="in_use_eids_instead", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Use EIDs instead of IIDs for identifiers")), ToolInput(tag="in_ignore_clear_range", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Ignore clear range and dump entire sequence")), ToolInput(tag="in_dump_contigs_instead", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="Dump Contigs instead of reads")), ToolInput(tag="in_dump_just_eids", input_type=File(optional=True), prefix="-E", doc=InputDocumentation(doc="Dump just the eids listed in file")), ToolInput(tag="in_dump_just_iids", input_type=File(optional=True), prefix="-I", doc=InputDocumentation(doc="Dump just the iids listed in file")), ToolInput(tag="in_list_gc_content", input_type=String(), position=0, doc=InputDocumentation(doc="[options]  -b <bank path>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Listgccontent_V0_1_0().translate("wdl", allow_empty_container=True)

