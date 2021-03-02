from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Jhsdb_Jmap_V0_1_0 = CommandToolBuilder(tool="jhsdb_jmap", base_command=["jhsdb", "jmap"], inputs=[ToolInput(tag="in_heap", input_type=Boolean(optional=True), prefix="--heap", doc=InputDocumentation(doc="to print java heap summary")), ToolInput(tag="in_binary_heap", input_type=Boolean(optional=True), prefix="--binaryheap", doc=InputDocumentation(doc="to dump java heap in hprof binary format")), ToolInput(tag="in_dumpfile", input_type=Boolean(optional=True), prefix="--dumpfile", doc=InputDocumentation(doc="name of the dump file")), ToolInput(tag="in_histo", input_type=Boolean(optional=True), prefix="--histo", doc=InputDocumentation(doc="to print histogram of java object heap")), ToolInput(tag="in_cl_stats", input_type=Boolean(optional=True), prefix="--clstats", doc=InputDocumentation(doc="to print class loader statistics")), ToolInput(tag="in_finalizer_info", input_type=Boolean(optional=True), prefix="--finalizerinfo", doc=InputDocumentation(doc="to print information on objects awaiting finalization")), ToolInput(tag="in_exe", input_type=Boolean(optional=True), prefix="--exe", doc=InputDocumentation(doc="executable image name")), ToolInput(tag="in_core", input_type=Boolean(optional=True), prefix="--core", doc=InputDocumentation(doc="path to coredump")), ToolInput(tag="in_pid", input_type=Boolean(optional=True), prefix="--pid", doc=InputDocumentation(doc="pid of process to attach"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jhsdb_Jmap_V0_1_0().translate("wdl", allow_empty_container=True)

