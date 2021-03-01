from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Cnvetti_V0_1_0 = CommandToolBuilder(tool="cnvetti", base_command=["cnvetti"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase verbosity")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Decrease verbosity")), ToolInput(tag="in_io_threads", input_type=Int(optional=True), prefix="--io-threads", doc=InputDocumentation(doc="Number of additional threads to use for (de)compression in I/O. [default: 0]")), ToolInput(tag="in_cmd", input_type=String(), position=0, doc=InputDocumentation(doc="Low-level access to the CNVetti primitives.")), ToolInput(tag="in_quick", input_type=String(), position=1, doc=InputDocumentation(doc="Easy-to-use shortcuts for command and important use cases.")), ToolInput(tag="in_visualize", input_type=String(), position=2, doc=InputDocumentation(doc="Visualization of coverage information (on-target, off-target, and genome-wide bins).")), ToolInput(tag="in_annotate", input_type=String(), position=3, doc=InputDocumentation(doc="Perform annotate called CNV result BCF files")), ToolInput(tag="in_help", input_type=String(), position=4, doc=InputDocumentation(doc="Prints this message or the help of the given subcommand(s)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvetti_V0_1_0().translate("wdl", allow_empty_container=True)

