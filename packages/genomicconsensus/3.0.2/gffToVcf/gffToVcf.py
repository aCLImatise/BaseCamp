from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Gfftovcf_V0_1_0 = CommandToolBuilder(tool="gffToVcf", base_command=["gffToVcf"], inputs=[ToolInput(tag="in_emit_tool_contract", input_type=Boolean(optional=True), prefix="--emit-tool-contract", doc=InputDocumentation(doc="Emit Tool Contract to stdout (default: False)")), ToolInput(tag="in_resolved_tool_contract", input_type=String(optional=True), prefix="--resolved-tool-contract", doc=InputDocumentation(doc="Run Tool directly from a PacBio Resolved tool contract\n(default: None)")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Write the log to file. Default(None) will write to\nstdout. (default: None)")), ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log-level", doc=InputDocumentation(doc="Set log level (default: INFO)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Alias for setting log level to DEBUG (default: False)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Alias for setting log level to CRITICAL to suppress\noutput. (default: False)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Set the verbosity level. (default: None)")), ToolInput(tag="in_global_reference", input_type=String(optional=True), prefix="--globalReference", doc=InputDocumentation(doc="Name of global reference to put in Meta field\n(default: None)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfftovcf_V0_1_0().translate("wdl", allow_empty_container=True)

