from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Icount_Summary_V0_1_0 = CommandToolBuilder(tool="iCount_summary", base_command=["iCount", "summary"], inputs=[ToolInput(tag="in_types_length_file", input_type=Boolean(optional=True), prefix="--types_length_file", doc=InputDocumentation(doc="Path to file with lengths of each type (default: None)")), ToolInput(tag="in_digits", input_type=Boolean(optional=True), prefix="--digits", doc=InputDocumentation(doc="Number of decimal places in results (default: 8)")), ToolInput(tag="in_subtype", input_type=Boolean(optional=True), prefix="--subtype", doc=InputDocumentation(doc="Name of attribute to be used as subtype (default: None)")), ToolInput(tag="in_types_listed_be", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="[ ...], --excluded_types  [ ...]\nTypes listed in 3rd column of GTF to be exclude from analysis (default: None)")), ToolInput(tag="in_stdout_log", input_type=Boolean(optional=True), prefix="--stdout_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF.")), ToolInput(tag="in_file_log", input_type=Boolean(optional=True), prefix="--file_log", doc=InputDocumentation(doc="Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF.")), ToolInput(tag="in_file_log_path", input_type=Boolean(optional=True), prefix="--file_logpath", doc=InputDocumentation(doc="Path to log file.")), ToolInput(tag="in_results_file", input_type=Boolean(optional=True), prefix="--results_file", doc=InputDocumentation(doc="File into which to store Metrics.")), ToolInput(tag="in_annotation", input_type=String(), position=0, doc=InputDocumentation(doc="Path to annotation GTF file (should include subtype attribute)")), ToolInput(tag="in_sites", input_type=String(), position=1, doc=InputDocumentation(doc="Path to BED6 file listing cross-linked sites")), ToolInput(tag="in_summary", input_type=String(), position=2, doc=InputDocumentation(doc="Path to output tab-delimited file with summary statistics")), ToolInput(tag="in_fai", input_type=String(), position=3, doc=InputDocumentation(doc="Path to file with chromosome lengths"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Icount_Summary_V0_1_0().translate("wdl", allow_empty_container=True)

