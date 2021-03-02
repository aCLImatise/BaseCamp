from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Pbbamify_V0_1_0 = CommandToolBuilder(tool="pbbamify", base_command=["pbbamify"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="FILE  The aligned non-PacBio BAM file. If not provided, stdin will be used as input.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="FILE  Path to the output BAM file. If not specified, output will be to the stdout.")), ToolInput(tag="in_verbose_level", input_type=Boolean(optional=True), prefix="--verbose-level", doc=InputDocumentation(doc="INT   Specifies the level of info which will be output produced on stderr. 0 turns all output off, 1\noutputs only warnings, while levels 2 and above outputs a status message every 1000000 (2),\n100000 (3), 1000 (4), 100 (5), 10 (6) and 1 (7) reads. [3]")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="STR   Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [INFO]")), ToolInput(tag="in_log_file", input_type=Boolean(optional=True), prefix="--log-file", doc=InputDocumentation(doc="FILE  Log to a file, instead of stderr.")), ToolInput(tag="in_ref_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="FILE  Reference used to align the input.")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc="FILE  Input file(s). Maybe one of: DataSetXML, BAM file(s), or FOFN"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="FILE  Path to the output BAM file. If not specified, output will be to the stdout."))], container="quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbbamify_V0_1_0().translate("wdl")

