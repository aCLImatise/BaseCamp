from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Guppy_Compress_V0_1_0 = CommandToolBuilder(tool="guppy_compress", base_command=["guppy", "compress"], inputs=[ToolInput(tag="in_point_mass", input_type=Boolean(optional=True), prefix="--point-mass", doc=InputDocumentation(doc="Treat every pquery as a point mass concentrated on the highest-weight placement.")), ToolInput(tag="in_pp", input_type=Boolean(optional=True), prefix="--pp", doc=InputDocumentation(doc="Use posterior probability for the weight.")), ToolInput(tag="in_specify_filename_write", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the filename to write to.")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames.")), ToolInput(tag="in_cut_off", input_type=Boolean(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="The cutoff parameter for mass compression")), ToolInput(tag="in_discard_below", input_type=Boolean(optional=True), prefix="--discard-below", doc=InputDocumentation(doc="Ignore pquery locations with a mass less than the specified value.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_compress", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_place_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guppy_Compress_V0_1_0().translate("wdl", allow_empty_container=True)

