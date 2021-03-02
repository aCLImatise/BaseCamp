from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Sra_Find_Experiment_Runs_Py_V0_1_0 = CommandToolBuilder(tool="sra_find_experiment_runs.py", base_command=["sra_find_experiment_runs.py"], inputs=[ToolInput(tag="in_experiment_file", input_type=File(optional=True), prefix="--experiment-file", doc=InputDocumentation(doc="File with SRA experiment IDs (starting with 'SRX').")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="The output file.")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Path of log file (if specified, report to stdout AND file.")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Only output errors and warnings.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Enable verbose output. Ignored if --quiet is specified."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="The output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sra_Find_Experiment_Runs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

