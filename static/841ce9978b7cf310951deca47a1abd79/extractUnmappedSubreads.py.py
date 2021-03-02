from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Extractunmappedsubreads_Py_V0_1_0 = CommandToolBuilder(tool="extractUnmappedSubreads.py", base_command=["extractUnmappedSubreads.py"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Set the verbosity level (default: None)")), ToolInput(tag="in_profile", input_type=Boolean(optional=True), prefix="--profile", doc=InputDocumentation(doc="Print runtime profile at exit (default: False)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Catch exceptions in debugger (requires ipdb) (default: False)")), ToolInput(tag="in_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="a fasta file containing all subreads.")), ToolInput(tag="in_cmp_doth_five", input_type=Int(), position=1, doc=InputDocumentation(doc="input cmp.h5 files."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extractunmappedsubreads_Py_V0_1_0().translate("wdl", allow_empty_container=True)

