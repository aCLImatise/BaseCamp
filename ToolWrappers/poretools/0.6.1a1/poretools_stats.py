from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Poretools_Stats_V0_1_0 = CommandToolBuilder(tool="poretools_stats", base_command=["poretools", "stats"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not output warnings to stderr")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="Which type of FASTQ entries should be reported? Def.=all")), ToolInput(tag="in_full_tsv", input_type=Boolean(optional=True), prefix="--full-tsv", doc=InputDocumentation(doc="Verbose output in tab-separated format.")), ToolInput(tag="in_group", input_type=Int(optional=True), prefix="--group", doc=InputDocumentation(doc="Base calling group serial number to extract, default 000")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="The input FAST5 files."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poretools_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

