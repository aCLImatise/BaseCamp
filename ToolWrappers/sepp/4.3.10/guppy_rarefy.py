from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Guppy_Rarefy_V0_1_0 = CommandToolBuilder(tool="guppy_rarefy", base_command=["guppy", "rarefy"], inputs=[ToolInput(tag="in_specify_filename_write", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the filename to write to.")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames.")), ToolInput(tag="in_seed", input_type=Boolean(optional=True), prefix="--seed", doc=InputDocumentation(doc="Set the random seed, an integer > 0. Default is 1.")), ToolInput(tag="in_number_keep_placefile", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="The number of pqueries to keep per placefile.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_rare_fy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_place_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guppy_Rarefy_V0_1_0().translate("wdl", allow_empty_container=True)

