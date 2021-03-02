from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Dumpcontigsasreads_V0_1_0 = CommandToolBuilder(tool="dumpContigsAsReads", base_command=["dumpContigsAsReads"], inputs=[ToolInput(tag="in_bank", input_type=Boolean(optional=True), prefix="-bank", doc=InputDocumentation(doc="bank where assembly is stored")), ToolInput(tag="in_dump_just_eids", input_type=File(optional=True), prefix="-E", doc=InputDocumentation(doc="Dump just the contig eids listed in file")), ToolInput(tag="in_dump_just_iids", input_type=File(optional=True), prefix="-I", doc=InputDocumentation(doc="Dump just the contig iids listed in file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dumpcontigsasreads_V0_1_0().translate("wdl", allow_empty_container=True)

