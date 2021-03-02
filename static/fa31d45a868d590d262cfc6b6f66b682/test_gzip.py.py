from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Test_Gzip_Py_V0_1_0 = CommandToolBuilder(tool="test_gzip.py", base_command=["test_gzip.py"], inputs=[ToolInput(tag="in_block_size", input_type=Int(optional=True), prefix="--blocksize", doc=InputDocumentation(doc="The size of blocks for reading and writing (default:\n4k)")), ToolInput(tag="in_num_iterations", input_type=Int(optional=True), prefix="--num-iterations", doc=InputDocumentation(doc="The number of iterations (default: 30)")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This option specifies a file to which logging\nstatements will be written (in addition to stdout and\nstderr, if specified) (default: )")), ToolInput(tag="in_log_stdout", input_type=Boolean(optional=True), prefix="--log-stdout", doc=InputDocumentation(doc="If this flag is present, then logging statements will\nbe written to stdout (in addition to a file and\nstderr, if specified) (default: False)")), ToolInput(tag="in_no_log_stderr", input_type=Boolean(optional=True), prefix="--no-log-stderr", doc=InputDocumentation(doc="Unless this flag is present, then logging statements\nwill be written to stderr (in addition to a file and\nstdout, if specified) (default: False)")), ToolInput(tag="in_logging_level", input_type=String(optional=True), prefix="--logging-level", doc=InputDocumentation(doc="If this value is specified, then it will be used for\nall logs (default: WARNING)")), ToolInput(tag="in_file_logging_level", input_type=String(optional=True), prefix="--file-logging-level", doc=InputDocumentation(doc="The logging level to be used for the log file, if\nspecified. This option overrides --logging-level.\n(default: NOTSET)")), ToolInput(tag="in_stdout_logging_level", input_type=String(optional=True), prefix="--stdout-logging-level", doc=InputDocumentation(doc="The logging level to be used for the stdout log, if\nspecified. This option overrides --logging-level.\n(default: NOTSET)")), ToolInput(tag="in_stderr_logging_level", input_type=String(optional=True), prefix="--stderr-logging-level", doc=InputDocumentation(doc="The logging level to be used for the stderr log, if\nspecified. This option overrides --logging-level.\n(default: NOTSET)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Test_Gzip_Py_V0_1_0().translate("wdl", allow_empty_container=True)

