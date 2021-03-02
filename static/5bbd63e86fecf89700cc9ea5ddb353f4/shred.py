from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Shred_V0_1_0 = CommandToolBuilder(tool="shred", base_command=["shred"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="change permissions to allow writing if necessary")), ToolInput(tag="in_iterations", input_type=Int(optional=True), prefix="--iterations", doc=InputDocumentation(doc="overwrite N times instead of the default (3)")), ToolInput(tag="in_random_source", input_type=File(optional=True), prefix="--random-source", doc=InputDocumentation(doc="get random bytes from FILE")), ToolInput(tag="in_size", input_type=Int(optional=True), prefix="--size", doc=InputDocumentation(doc="shred this many bytes (suffixes like K, M, G accepted)")), ToolInput(tag="in_deallocate_remove_file", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="deallocate and remove file after overwriting")), ToolInput(tag="in_remove", input_type=Boolean(optional=True), prefix="--remove", doc=InputDocumentation(doc="[=HOW]  like -u but give control on HOW to delete;  See below")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="show progress")), ToolInput(tag="in_exact", input_type=Boolean(optional=True), prefix="--exact", doc=InputDocumentation(doc="do not round file sizes up to the next full block;\nthis is the default for non-regular files")), ToolInput(tag="in_add_final_overwrite", input_type=Boolean(optional=True), prefix="--zero", doc=InputDocumentation(doc="add a final overwrite with zeros to hide shredding"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shred_V0_1_0().translate("wdl", allow_empty_container=True)

