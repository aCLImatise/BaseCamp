from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Guppy_Round_V0_1_0 = CommandToolBuilder(tool="guppy_round", base_command=["guppy", "round"], inputs=[ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames.")), ToolInput(tag="in_sig_figs", input_type=Boolean(optional=True), prefix="--sig-figs", doc=InputDocumentation(doc="Set the number of significant figures used for rounding. Specify 0 for no rounding. Default: 3.")), ToolInput(tag="in_cut_off", input_type=Boolean(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="Set the rounding inclusion cutoff for the ML weight ratio. Default: 0.01.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_round", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_place_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/sepp:4.5.1--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guppy_Round_V0_1_0().translate("wdl")

