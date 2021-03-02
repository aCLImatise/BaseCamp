from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Guppy_To_Rdp_V0_1_0 = CommandToolBuilder(tool="guppy_to_rdp", base_command=["guppy", "to_rdp"], inputs=[ToolInput(tag="in_specify_filename_write", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify the filename to write to.")), ToolInput(tag="in_out_dir", input_type=Boolean(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Specify the directory to write files to.")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Specify a string to be prepended to filenames. Required.")), ToolInput(tag="in_reference_package_path", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Reference package path. Required.")), ToolInput(tag="in_ranks_include_annotated", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Ranks to include in the annotated fasta file. Can be comma-separated.")), ToolInput(tag="in_help", input_type=Boolean(optional=True), prefix="--help", doc=InputDocumentation(doc="Display this list of options")), ToolInput(tag="in_to_rdp", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/sepp:v4.5.0--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guppy_To_Rdp_V0_1_0().translate("wdl")

