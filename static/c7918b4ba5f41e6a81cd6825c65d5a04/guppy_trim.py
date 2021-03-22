from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Guppy_Trim_V0_1_0 = CommandToolBuilder(tool="guppy_trim", base_command=["guppy", "trim"], inputs=[ToolInput(tag="in_point_mass", input_type=Boolean(optional=True), prefix="--point-mass", doc=InputDocumentation(doc="Treat every pquery as a point mass concentrated on the highest-weight placement.")), ToolInput(tag="in_pp", input_type=Boolean(optional=True), prefix="--pp", doc=InputDocumentation(doc="Use posterior probability for the weight.")), ToolInput(tag="in_specify_filename_write", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the filename to write to.")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames.")), ToolInput(tag="in_min_path_mass", input_type=Boolean(optional=True), prefix="--min-path-mass", doc=InputDocumentation(doc="The minimum mass which must be on the path to a leaf to keep it. default: 0.001")), ToolInput(tag="in_discarded", input_type=Boolean(optional=True), prefix="--discarded", doc=InputDocumentation(doc="A file to write discarded pqueries to.")), ToolInput(tag="in_rewrite_discarded_mass", input_type=Boolean(optional=True), prefix="--rewrite-discarded-mass", doc=InputDocumentation(doc="Move placements which were on discarded leaves to the nearest non-discarded node.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_trim", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_place_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/sepp:4.5.1--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guppy_Trim_V0_1_0().translate("wdl")

