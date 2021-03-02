from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Peakranger_Nr_V0_1_0 = CommandToolBuilder(tool="peakranger_nr", base_command=["peakranger", "nr"], inputs=[ToolInput(tag="in_arg_data_file", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[ --data ] arg               data file")), ToolInput(tag="in_arg_control_file", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="[ --control ] arg            control file")), ToolInput(tag="in_format", input_type=File(optional=True), prefix="--format", doc=InputDocumentation(doc="the format of the data file, can be one of :\nbowtie, sam, bam and bed")), ToolInput(tag="in_arg_read_length", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[ --ext_length ] arg (=200)  read extension length")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="show progress when possible")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peakranger_Nr_V0_1_0().translate("wdl", allow_empty_container=True)

