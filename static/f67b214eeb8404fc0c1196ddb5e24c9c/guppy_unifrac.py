from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Guppy_Unifrac_V0_1_0 = CommandToolBuilder(tool="guppy_unifrac", base_command=["guppy", "unifrac"], inputs=[ToolInput(tag="in_point_mass", input_type=Boolean(optional=True), prefix="--point-mass", doc=InputDocumentation(doc="Treat every pquery as a point mass concentrated on the highest-weight placement.")), ToolInput(tag="in_pp", input_type=Boolean(optional=True), prefix="--pp", doc=InputDocumentation(doc="Use posterior probability for the weight.")), ToolInput(tag="in_specify_filename_write", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the filename to write to.")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames.")), ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="--csv", doc=InputDocumentation(doc="Output the results as csv instead of a padded matrix.")), ToolInput(tag="in_list_out", input_type=Boolean(optional=True), prefix="--list-out", doc=InputDocumentation(doc="Output the KR results as a list rather than a matrix.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_uni_frac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_one_dot_j_place", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_two_dot_j_place", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/sepp:v4.5.0--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guppy_Unifrac_V0_1_0().translate("wdl")

