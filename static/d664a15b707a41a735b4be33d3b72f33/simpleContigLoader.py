from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Simplecontigloader_V0_1_0 = CommandToolBuilder(tool="simpleContigLoader", base_command=["simpleContigLoader"], inputs=[ToolInput(tag="in_be_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Be Verbose")), ToolInput(tag="in_append_contigs_instead", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Append contigs instead of overwriting them")), ToolInput(tag="in_use_read_eids", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Use read eids instead of iids")), ToolInput(tag="in_bank_path", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_contig_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simplecontigloader_V0_1_0().translate("wdl", allow_empty_container=True)

