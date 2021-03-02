from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Flowcraft_Report_V0_1_0 = CommandToolBuilder(tool="flowcraft_report", base_command=["flowcraft", "report"], inputs=[ToolInput(tag="in_specify_path_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Specify the path to the pipeline report JSON file.")), ToolInput(tag="in_url", input_type=String(optional=True), prefix="--url", doc=InputDocumentation(doc="Specify the URL to where the data should be broadcast")), ToolInput(tag="in_trace_file", input_type=File(optional=True), prefix="--trace-file", doc=InputDocumentation(doc="Specify the nextflow trace file. Only applicable in\ncombination with --watch option.")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="Specify the nextflow log file. Only applicable in\ncombination with --watch option.")), ToolInput(tag="in_watch", input_type=Boolean(optional=True), prefix="--watch", doc=InputDocumentation(doc="Run the report in watch mode. This option will track\nthe generation of reports during the execution of the\npipeline, allowing for the visualization of the\nreports in real-time\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flowcraft_Report_V0_1_0().translate("wdl", allow_empty_container=True)

