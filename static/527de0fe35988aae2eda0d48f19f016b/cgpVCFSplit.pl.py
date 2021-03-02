from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Cgpvcfsplit_Pl_V0_1_0 = CommandToolBuilder(tool="cgpVCFSplit.pl", base_command=["cgpVCFSplit.pl"], inputs=[ToolInput(tag="in_line_count", input_type=Boolean(optional=True), prefix="--linecount", doc=InputDocumentation(doc="(-l)       The number of mutant lines to put in each split file.")), ToolInput(tag="in_no_head", input_type=Boolean(optional=True), prefix="--nohead", doc=InputDocumentation(doc="(-n)       Switch to ignore the header of the file when creating split files.")), ToolInput(tag="in_file", input_type=Boolean(optional=True), prefix="--file", doc=InputDocumentation(doc="(-i)       The file to split.")), ToolInput(tag="in_outfile", input_type=Boolean(optional=True), prefix="--outFile", doc=InputDocumentation(doc="(-o)       The base output file name will be <fileName>.[1-n] where n is the number of files created by the split.")), ToolInput(tag="in_skip_validate", input_type=Boolean(optional=True), prefix="--skip-validate", doc=InputDocumentation(doc="(-s)   Skip the validation step.")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cgpvcfsplit_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

