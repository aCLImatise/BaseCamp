from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Lckdo_V0_1_0 = CommandToolBuilder(tool="lckdo", base_command=["lckdo"], inputs=[ToolInput(tag="in_lock_already_held", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="- if the lock is already held by another process,\nwait for it to complete instead of failing immediately")), ToolInput(tag="in_same_w_wait", input_type=String(optional=True), prefix="-W", doc=InputDocumentation(doc="- the same as -w but wait not more than sec seconds")), ToolInput(tag="in_execute_program_directly", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="- execute the program directly, no fork/wait\n(keeps extra open file descriptor)")), ToolInput(tag="in_set_fd_keep", input_type=String(optional=True), prefix="-E", doc=InputDocumentation(doc="- set the fd# to keep open in -e case (implies -e)")), ToolInput(tag="in_create_lock_file", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="- do not create the lock file if it does not exist")), ToolInput(tag="in_produce_output_lock", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="- produce no output if lock is already held")), ToolInput(tag="in_lock_read_mode", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="- lock in shared (read) mode")), ToolInput(tag="in_lock_exclusive_default", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="- lock in exclusive (write) mode (default)")), ToolInput(tag="in_test_lock_existence", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="- test for lock existence (just prints pid if any with -q)\n(implies -n)\n")), ToolInput(tag="in_lock_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_program", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_arguments", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lckdo_V0_1_0().translate("wdl", allow_empty_container=True)

