from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Dataset_V0_1_0 = CommandToolBuilder(tool="dataset", base_command=["dataset"], inputs=[ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Write the log to file. Default(None) will write to\nstdout. (default: None)")), ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log-level", doc=InputDocumentation(doc="Set log level (default: WARNING)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Alias for setting log level to DEBUG (default: False)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Alias for setting log level to CRITICAL to suppress\noutput. (default: False)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Set the verbosity level. (default: None)")), ToolInput(tag="in_strict", input_type=Boolean(optional=True), prefix="--strict", doc=InputDocumentation(doc="Turn on strict tests, raise all errors (default:\nFalse)")), ToolInput(tag="in_skip_counts", input_type=Boolean(optional=True), prefix="--skipCounts", doc=InputDocumentation(doc="Skip updating NumRecords and TotalLength counts\n(default: False)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dataset_V0_1_0().translate("wdl", allow_empty_container=True)

