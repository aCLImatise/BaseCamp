from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Pbtools_Gather_V0_1_0 = CommandToolBuilder(tool="pbtools_gather", base_command=["pbtools-gather"], inputs=[ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Write the log to file. Default(None) will write to\nstdout. (default: None)")), ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log-level", doc=InputDocumentation(doc="Set log level (default: INFO)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Alias for setting log level to DEBUG (default: False)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Alias for setting log level to CRITICAL to suppress\noutput. (default: False)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Set the verbosity level. (default: None)")), ToolInput(tag="in_join_contigs", input_type=Boolean(optional=True), prefix="--join-contigs", doc=InputDocumentation(doc="Merge split contigs (default: False)")), ToolInput(tag="in_output_file", input_type=String(), position=0, doc=InputDocumentation(doc="Gathered output file")), ToolInput(tag="in_chunked_files", input_type=String(), position=1, doc=InputDocumentation(doc="Chunked input files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbtools_Gather_V0_1_0().translate("wdl", allow_empty_container=True)

