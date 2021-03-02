from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory, Boolean, String

Logcombiner_V0_1_0 = CommandToolBuilder(tool="logcombiner", base_command=["logcombiner"], inputs=[ToolInput(tag="in_log", input_type=File(optional=True), prefix="-log", doc=InputDocumentation(doc="specify the name of the log file, each log file must be specified with separate -log option")), ToolInput(tag="in_specify_log_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="specify log file to write into (default output is stdout)")), ToolInput(tag="in_specify_number_percentage", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="specify the number PERCENTAGE of lines in the log file considered to be burnin (default 10)")), ToolInput(tag="in_dir", input_type=Directory(optional=True), prefix="-dir", doc=InputDocumentation(doc="specify particle directory -- used for particle filtering in BEASTLabs only -- if defined only one log must be specified and the -n option specified")), ToolInput(tag="in_specify_number_is", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="specify the number of particles, ignored if -dir is not defined")), ToolInput(tag="in_resample", input_type=Int(optional=True), prefix="-resample", doc=InputDocumentation(doc="specify number of states to resample")), ToolInput(tag="in_decimal", input_type=Boolean(optional=True), prefix="-decimal", doc=InputDocumentation(doc="flag to indicate numbers should converted from scientific into decimal format")), ToolInput(tag="in_re_number", input_type=Boolean(optional=True), prefix="-renumber", doc=InputDocumentation(doc="flag to indicate output states should be renumbered")), ToolInput(tag="in_options", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_specify_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_specify_log_file", type_hint=File()), doc=OutputDocumentation(doc="specify log file to write into (default output is stdout)"))], container="quay.io/biocontainers/beast2:2.6.3--hf1b8bbb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Logcombiner_V0_1_0().translate("wdl")

