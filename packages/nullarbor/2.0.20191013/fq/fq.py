from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Fq_V0_1_0 = CommandToolBuilder(tool="fq", base_command=["fq"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="!        Quiet mode: no progress output (default '0').")), ToolInput(tag="in_ref", input_type=Int(optional=True), prefix="--ref", doc=InputDocumentation(doc="Reference FASTA file OR size in bp (default '').")), ToolInput(tag="in_hist", input_type=Boolean(optional=True), prefix="--hist", doc=InputDocumentation(doc="Length histogram (NO LONGER SUPPORTED) (default '0').")), ToolInput(tag="in_file_dot_fq_vertical_line_file_dot_fq_do_tgz_dot_dot_dot", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fq_V0_1_0().translate("wdl", allow_empty_container=True)

