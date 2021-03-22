from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Guppy_Error_V0_1_0 = CommandToolBuilder(tool="guppy_error", base_command=["guppy", "error"], inputs=[ToolInput(tag="in_pp", input_type=Boolean(optional=True), prefix="--pp", doc=InputDocumentation(doc="Use posterior probability for the weight.")), ToolInput(tag="in_specify_filename_write", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the filename to write to.")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames.")), ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="--csv", doc=InputDocumentation(doc="Output the results as csv instead of a padded matrix.")), ToolInput(tag="in_include_pendant", input_type=Boolean(optional=True), prefix="--include-pendant", doc=InputDocumentation(doc="Include pendant branch lengths in distance calculations.")), ToolInput(tag="in_scale_experimental_bl", input_type=Boolean(optional=True), prefix="--scale-experimental-bl", doc=InputDocumentation(doc="Scale the branch lengths in the experimental jplace file.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_error", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_experimental_dot_j_place", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_expected_dot_j_place", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/sepp:4.5.1--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guppy_Error_V0_1_0().translate("wdl")

