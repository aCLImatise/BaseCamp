from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File

Coverage3_Report_V0_1_0 = CommandToolBuilder(tool="coverage3_report", base_command=["coverage3", "report"], inputs=[ToolInput(tag="in_fail_under", input_type=Int(optional=True), prefix="--fail-under", doc=InputDocumentation(doc="Exit with a status of 2 if the total coverage is less\nthan MIN.")), ToolInput(tag="in_ignore_errors", input_type=Boolean(optional=True), prefix="--ignore-errors", doc=InputDocumentation(doc="Ignore errors while reading source files.")), ToolInput(tag="in_include", input_type=Int(optional=True), prefix="--include", doc=InputDocumentation(doc=",PAT2,...\nInclude only files whose paths match one of these\npatterns. Accepts shell-style wildcards, which must be\nquoted.")), ToolInput(tag="in_omit", input_type=Int(optional=True), prefix="--omit", doc=InputDocumentation(doc=",PAT2,...  Omit files whose paths match one of these patterns.\nAccepts shell-style wildcards, which must be quoted.")), ToolInput(tag="in_show_missing", input_type=Boolean(optional=True), prefix="--show-missing", doc=InputDocumentation(doc="Show line numbers of statements in each module that\nweren't executed.")), ToolInput(tag="in_skip_covered", input_type=Boolean(optional=True), prefix="--skip-covered", doc=InputDocumentation(doc="Skip files with 100% coverage.")), ToolInput(tag="in_debug", input_type=String(optional=True), prefix="--debug", doc=InputDocumentation(doc="Debug options, separated by commas")), ToolInput(tag="in_rcfile", input_type=File(optional=True), prefix="--rcfile", doc=InputDocumentation(doc="Specify configuration file.  Defaults to '.coveragerc'")), ToolInput(tag="in_modules", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coverage3_Report_V0_1_0().translate("wdl", allow_empty_container=True)

