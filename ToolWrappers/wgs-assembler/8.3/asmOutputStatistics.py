from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Asmoutputstatistics_V0_1_0 = CommandToolBuilder(tool="asmOutputStatistics", base_command=["asmOutputStatistics"], inputs=[ToolInput(tag="in_read_assembly_here", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc="read the assembly from here")), ToolInput(tag="in_gatekeeper_store", input_type=String(optional=True), prefix="-G", doc=InputDocumentation(doc="gatekeeper store")), ToolInput(tag="in_overlap_store", input_type=String(optional=True), prefix="-O", doc=InputDocumentation(doc="overlap store")), ToolInput(tag="in_v_tigstore_version", input_type=String(optional=True), prefix="-T", doc=InputDocumentation(doc="v    tigStore and version")), ToolInput(tag="in_scaffolder_checkpoint_file", input_type=File(optional=True), prefix="-C", doc=InputDocumentation(doc="v     scaffolder checkpoint file name and version")), ToolInput(tag="in_write_output_here", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="write the output here"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Asmoutputstatistics_V0_1_0().translate("wdl", allow_empty_container=True)

