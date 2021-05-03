from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int

Bioconda_Utils_Clean_Cran_Skeleton_V0_1_0 = CommandToolBuilder(tool="bioconda_utils_clean_cran_skeleton", base_command=["bioconda-utils", "clean-cran-skeleton"], inputs=[ToolInput(tag="in_no_windows", input_type=Boolean(optional=True), prefix="--no-windows", doc=InputDocumentation(doc="Use this when submitting an R package to Bioconda.\nAfter a CRAN skeleton is created, any Windows-related\nlines will be removed and the bld.bat file will be\nremoved. (default: False)")), ToolInput(tag="in_loglevel", input_type=String(optional=True), prefix="--loglevel", doc=InputDocumentation(doc="Set logging level (debug, info, warning, error,\ncritical) (default: 'info')")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--logfile", doc=InputDocumentation(doc="Write log to file (default: -)")), ToolInput(tag="in_log_file_level", input_type=File(optional=True), prefix="--logfile-level", doc=InputDocumentation(doc="Log level for log file (default: 'debug')")), ToolInput(tag="in_log_command_max_lines", input_type=Int(optional=True), prefix="--log-command-max-lines", doc=InputDocumentation(doc="Limit lines emitted for commands executed (default: -)\n"))], outputs=[], container="quay.io/biocontainers/bioconda-utils:0.17.5--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioconda_Utils_Clean_Cran_Skeleton_V0_1_0().translate("wdl")

