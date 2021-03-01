from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Realpath_V0_1_0 = CommandToolBuilder(tool="realpath", base_command=["realpath"], inputs=[ToolInput(tag="in_canonicalize_existing", input_type=Boolean(optional=True), prefix="--canonicalize-existing", doc=InputDocumentation(doc="all components of the path must exist")), ToolInput(tag="in_canonicalize_missing", input_type=Boolean(optional=True), prefix="--canonicalize-missing", doc=InputDocumentation(doc="no path components need exist or be a directory")), ToolInput(tag="in_logical", input_type=Boolean(optional=True), prefix="--logical", doc=InputDocumentation(doc="resolve '..' components before symlinks")), ToolInput(tag="in_physical", input_type=Boolean(optional=True), prefix="--physical", doc=InputDocumentation(doc="resolve symlinks as encountered (default)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="suppress most error messages")), ToolInput(tag="in_relative_to", input_type=File(optional=True), prefix="--relative-to", doc=InputDocumentation(doc="print the resolved path relative to DIR")), ToolInput(tag="in_relative_base", input_type=String(optional=True), prefix="--relative-base", doc=InputDocumentation(doc="print absolute paths unless paths below DIR")), ToolInput(tag="in_no_symlinks", input_type=Boolean(optional=True), prefix="--no-symlinks", doc=InputDocumentation(doc="don't expand symlinks")), ToolInput(tag="in_end_output_line", input_type=Boolean(optional=True), prefix="--zero", doc=InputDocumentation(doc="end each output line with NUL, not newline"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Realpath_V0_1_0().translate("wdl", allow_empty_container=True)

