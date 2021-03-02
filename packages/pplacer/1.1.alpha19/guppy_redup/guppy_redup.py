from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Guppy_Redup_V0_1_0 = CommandToolBuilder(tool="guppy_redup", base_command=["guppy", "redup"], inputs=[ToolInput(tag="in_specify_filename_write", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the filename to write to.")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames.")), ToolInput(tag="in_dedup_file_use", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="The dedup file to use to restore duplicates.")), ToolInput(tag="in_specified_redup_list", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="If specified, redup with counts instead of a name list.")), ToolInput(tag="in_as_mass", input_type=Boolean(optional=True), prefix="--as-mass", doc=InputDocumentation(doc="If specified, add mass instead of names to each pquery.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_red_up", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_place_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guppy_Redup_V0_1_0().translate("wdl", allow_empty_container=True)

