from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Coverage3_Run_V0_1_0 = CommandToolBuilder(tool="coverage3_run", base_command=["coverage3", "run"], inputs=[ToolInput(tag="in_append", input_type=Boolean(optional=True), prefix="--append", doc=InputDocumentation(doc="Append coverage data to .coverage, otherwise it starts\nclean each time.")), ToolInput(tag="in_branch", input_type=Boolean(optional=True), prefix="--branch", doc=InputDocumentation(doc="Measure branch coverage in addition to statement")), ToolInput(tag="in_omit", input_type=Int(optional=True), prefix="--omit", doc=InputDocumentation(doc=",PAT2,...  Omit files whose paths match one of these patterns.\nAccepts shell-style wildcards, which must be quoted.")), ToolInput(tag="in_py_lib", input_type=Boolean(optional=True), prefix="--pylib", doc=InputDocumentation(doc="Measure coverage even inside the Python installed\nlibrary, which isn't done by default.")), ToolInput(tag="in_parallel_mode", input_type=Boolean(optional=True), prefix="--parallel-mode", doc=InputDocumentation(doc="Append the machine name, process id and random number\nto the .coverage data file name to simplify collecting\ndata from many processes.")), ToolInput(tag="in_source", input_type=Int(optional=True), prefix="--source", doc=InputDocumentation(doc=",SRC2,...\nA list of packages or directories of code to be\nmeasured.")), ToolInput(tag="in_timid", input_type=Boolean(optional=True), prefix="--timid", doc=InputDocumentation(doc="Use a simpler but slower trace method.  Try this if\nyou get seemingly impossible results!")), ToolInput(tag="in_debug", input_type=String(optional=True), prefix="--debug", doc=InputDocumentation(doc="Debug options, separated by commas")), ToolInput(tag="in_rcfile", input_type=File(optional=True), prefix="--rcfile", doc=InputDocumentation(doc="Specify configuration file.  Defaults to '.coveragerc'")), ToolInput(tag="in_coverage_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--concurrency=LIB     Properly measure code using a concurrency library.")), ToolInput(tag="in_quoted_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-m, --module          <pyfile> is an importable Python module, not a script"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coverage3_Run_V0_1_0().translate("wdl", allow_empty_container=True)

