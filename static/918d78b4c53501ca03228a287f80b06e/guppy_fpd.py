from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Guppy_Fpd_V0_1_0 = CommandToolBuilder(tool="guppy_fpd", base_command=["guppy", "fpd"], inputs=[ToolInput(tag="in_pp", input_type=Boolean(optional=True), prefix="--pp", doc=InputDocumentation(doc="Use posterior probability for the weight.")), ToolInput(tag="in_specify_filename_write", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the filename to write to.")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames.")), ToolInput(tag="in_csv", input_type=Boolean(optional=True), prefix="--csv", doc=InputDocumentation(doc="Output the results as csv instead of a padded matrix.")), ToolInput(tag="in_kappa", input_type=Boolean(optional=True), prefix="--kappa", doc=InputDocumentation(doc="A comma-separated list of additional exponents to use for calculating awpd.")), ToolInput(tag="in_include_pendant", input_type=Boolean(optional=True), prefix="--include-pendant", doc=InputDocumentation(doc="Consider pendant branch length in diversity calculations.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_fpd", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_place_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/sepp:4.5.1--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guppy_Fpd_V0_1_0().translate("wdl")

