from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Rm_V0_1_0 = CommandToolBuilder(tool="rm", base_command=["rm"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="ignore nonexistent files and arguments, never prompt")), ToolInput(tag="in_prompt_before_removal", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="prompt before every removal")), ToolInput(tag="in_prompt_removing_intrusive", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc="prompt once before removing more than three files, or\nwhen removing recursively; less intrusive than -i,\nwhile still giving protection against most mistakes")), ToolInput(tag="in_interactive", input_type=Boolean(optional=True), prefix="--interactive", doc=InputDocumentation(doc="[=WHEN]  prompt according to WHEN: never, once (-I), or\nalways (-i); without WHEN, prompt always")), ToolInput(tag="in_one_file_system", input_type=Boolean(optional=True), prefix="--one-file-system", doc=InputDocumentation(doc="when removing a hierarchy recursively, skip any\ndirectory that is on a file system different from\nthat of the corresponding command line argument")), ToolInput(tag="in_no_preserve_root", input_type=Boolean(optional=True), prefix="--no-preserve-root", doc=InputDocumentation(doc="do not treat '/' specially")), ToolInput(tag="in_preserve_root", input_type=Boolean(optional=True), prefix="--preserve-root", doc=InputDocumentation(doc="[=all]  do not remove '/' (default);\nwith 'all', reject any command line argument\non a separate device from its parent")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="--recursive", doc=InputDocumentation(doc="remove directories and their contents recursively")), ToolInput(tag="in_dir", input_type=Boolean(optional=True), prefix="--dir", doc=InputDocumentation(doc="remove empty directories")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="explain what is being done"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rm_V0_1_0().translate("wdl", allow_empty_container=True)

